class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def post_count
    self.posts.count
  end
end
