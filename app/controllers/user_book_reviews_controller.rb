class UserBookReviewsController < ApplicationController
    def show
        @userbookreview = UserBookReview.find(params[:id])

    end

    def new
<<<<<<< HEAD
        @userbookreview = UserBookReview.new()
=======
        @userbookreview = UserBookReview.new
>>>>>>> master

    end

    def create
        @userbookreview = UserBookReview.create(userbookreview_params)
<<<<<<< HEAD
        redirect_to user_path(@userbookreview.user_id)
=======
        redirect_to @userbookreview
>>>>>>> master

    end

    private

    def userbookreview_params
<<<<<<< HEAD
        params.permit(:review, :rating, :user_name, :book_name)
=======
        params.require(:userbookreview).permit(:review, :rating, :user_id, :book_id)
>>>>>>> master
    end

end
