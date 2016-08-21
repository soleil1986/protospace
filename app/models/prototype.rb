class Prototype < ActiveRecord::Base
  has_many :images, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy
  accepts_nested_attributes_for :images
  validates :title, presence: true
  validates :catchcopy, presence: true
  validates :concept, presence: true

  def main
    images.main.first
  end

  def sub
    images.sub
  end
end

