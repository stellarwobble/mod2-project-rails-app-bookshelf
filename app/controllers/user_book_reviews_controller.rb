class UserBookReviewsController < ApplicationController
    def show
        @userbookreview = UserBookReview.find(params[:id])

    end

    def new
        @userbookreview = UserBookReview.new

    end

    def create
        @userbookreview = UserBookReview.create(userbookreview_params)
        redirect_to @userbookreview

    end

    private

    def userbookreview_params
        params.require(:userbookreview).permit(:review, :rating, :user_id, :book_id)
    end

end
