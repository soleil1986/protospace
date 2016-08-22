class Like < ActiveRecord::Base
  belongs_to :prototype
  belongs_to :user
end
# , counter_cache: :likes_count
