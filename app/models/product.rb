class Product < ApplicationRecord
  validates :name, presence: true

  has_many :orders
  has_many :comments

  def average_rating
    comments.average(:rating).to_f
  end

  def self.search(search_term)
    if Rails.env.development?
      @products = Product.where('name LIKE ?', "%#{search_term}%")
    elsif Rails.env.production?
      @products = Product.where('name ilike ?', "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

end
