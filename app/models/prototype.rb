class Prototype < ActiveRecord::Base
  has_many :images
  belongs_to :user
  accepts_nested_attributes_for :images
  validates :title, presence: true
  validates :catchcopy, presence: true
  validates :concept, presence: true

  def main
    images.main.first.image
  end

  def sub_images
    images.sub
  end
end
