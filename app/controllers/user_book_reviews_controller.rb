class UserBookReviewsController < ApplicationController
    def show
        @userbookreview = UserBookReview.find(params[:id])

    end

    def new
        @userbookreview = UserBookReview.new

    end

    def create
        @userbookreview = UserBookReview.create(userbookreview_params)
        redirect_to profile_path
    end

    def edit
        @userbookreview = UserBookReview.find(params[:id])
    end

    def update
        @userbookreview = UserBookReview.find(params[:id])
        @userbookreview.update(userbookreview_params)
        redirect_to profile_path
    end

    def destroy
        @userbookreview = UserBookReview.find(params[:id])
        @userbookreview.destroy
        redirect_to profile_path
    end

    private

    def userbookreview_params
        params.require(:user_book_review).permit(:review, :rating, :user_id, :book_id)
    end

end
