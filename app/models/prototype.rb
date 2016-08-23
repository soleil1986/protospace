class Prototype < ActiveRecord::Base
  has_many :images, dependent: :destroy
  belongs_to :user
  has_many :likes, dependent: :destroy
  accepts_nested_attributes_for :images
  validates_presence_of :title, :catchcopy, :concept

  def main
    images.main.first
  end

  def sub
    images.sub
  end
end

