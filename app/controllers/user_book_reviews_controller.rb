class UserBookReviewsController < ApplicationController
    def show
        @userbookreview = UserBookReview.find(params[:id])

    end

    def new
        @userbookreview = UserBookReview.new()

    end

    def create
        @userbookreview = UserBookReview.create(userbookreview_params)
        redirect_to user_path(@userbookreview.user_id)

    end

    private

    def userbookreview_params
        params.permit(:review, :rating, :user_name, :book_name)
    end

end
