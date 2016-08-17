class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :prototype
  validates :image, presence: true
  enum roll: { main: 0, sub: 1}
end
