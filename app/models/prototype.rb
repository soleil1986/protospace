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

  def sub_first
    images.sub.first.image
  end

  def sub_second
    images.sub.second.image
  end

  def sub_third
    images.sub.third.image
  end
end
