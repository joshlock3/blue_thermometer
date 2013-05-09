class Track < ActiveRecord::Base
  belongs_to :user

  attr_accessible :name, :count, :user_id

  validates :name, :presence => true, :length => {:minimum => 3}

  validates :name, :presence => true

  validates :user_id, :presence => true
end
