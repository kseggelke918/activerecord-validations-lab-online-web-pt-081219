class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :post_content, length: { minimum: 250 }
  validates :post_summary, length: { maximum: 250 }
  validates :post_category, inclusion: { in: %w(fiction non-fiction), message: "%{value} is not a valid category"}
end
