class User < ActiveRecord::Base

  has_many :tracks
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me


   validates :email,
                :presence => true,
                :uniqueness => {:case_sensitive => false }


  validates :password,
            :presence => true,
            :confirmation => true,
            :length => {:within => 6..40}

  validates :username,
            :presence => true,
            :uniqueness => {:case_sensitive => false},
            :length => {:within => 3..40}



  def to_param
    username
  end



end
