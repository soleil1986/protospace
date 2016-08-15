class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:email]
  validates :username, presence: true
  validates :image, presence: true
  validates :password, presence: true
  validates :member, presence: true
  validates :profile, presence: true
  validates :works, presence: true

end
