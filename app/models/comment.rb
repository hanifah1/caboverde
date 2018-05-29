class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to product_path(@product)
  end

  scope :rating_desc, -> { order(rating: :desc) }

end
