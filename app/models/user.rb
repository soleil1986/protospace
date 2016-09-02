class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:email]
  has_many :prototypes
  has_many :likes
  has_many :comments
  validates_presence_of :username, :member, :profile, :works
end
