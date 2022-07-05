class ReviewsController < ApplicationController

  def index
    # List page of reviews

    @number = 13
    @restaurants = Review.all

  end

  # --- ---
  def new
    @review = Review.new
  end
  # --- ---

  # --- ---
  def create

    @review = Review.new(form_param)

    # save to database (Model-Table)
    @review.save

    # redirect back to the home page
    redirect_to root_path

  end
  # --- ---

  # --- show ---
  def show
    # individual reviews page
    @review = Review.find(params[:id])
  end
  # --- ---

  # --- destroy ---
  def destroy
    # find row in database(Model-Table) with id
    @review = Review.find(params[:id])
    # destroy it
    @review.destroy
    # link to home page
    redirect_to root_path
  end

  # --- edit ---
  def edit
    # find individual review for edit
    @review = Review.find(params[:id])
  end

  # --- update ---
  def update
    # find the individual review
    @review = Review.find(params[:id])
    # update with the new information
    @review.update(form_param)
    # redirect somewhere new
    redirect_to review_path(@review)
  end

  # self create function
  def form_param
    params.require(:review).permit(:title, :body, :score)
  end

end
