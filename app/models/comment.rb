class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product


  scope :rating_desc, -> { order(rating: :desc) }

  def highest_rating_comment
  comments.rating_desc.first
end

end
