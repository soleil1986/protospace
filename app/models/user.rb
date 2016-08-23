class User < ActiveRecord::Base
  mount_uploader :avatar, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:email]
  has_many :prototypes
  has_many :likes
  validates_presence_of :username, :avatar, :password, :member, :profile, :works
end
