class ReviewsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        @review = @product.reviews.create(review_params)
        @review[:user_id] = current_user.id
        if @review.save
            puts "if"
            redirect_to @product
        else
            puts "else"
            redirect_to @product
        end
      end

      private
      def review_params
        params.require(:review).permit(:rating, :description)
      end
end
