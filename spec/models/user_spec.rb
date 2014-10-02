require 'spec_helper'

describe User do
  before(:each) do
    @attributes = {

        :email => "Jay@example.com",
        :username => "jaylock",
        :password => "something",
        :password_confirmation => "something"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attributes)
  end

  describe "Attribute presence" do

    it "should require a username" do
      no_username_user = User.new(@attributes.merge(:username => ""))
      expect(no_username_user).not_to be_valid
    end

    it "should require an email" do
      no_email_user = User.new(@attributes.merge(:email => ""))
      expect(no_email_user).not_to be_valid
    end
  end
end