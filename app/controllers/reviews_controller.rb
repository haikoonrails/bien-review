class ReviewsController < ApplicationController

  def index
    # List page of reviews
    @price = params[:price]

    # is there a filter for price
    if @price.present?
      # filter by price
    else
      # all the reviews
      @restaurants = Review.all
    end
    
  end

  # --- ---
  def new
    @review = Review.new
  end
  # --- ---

  # --- ---
  def create

    @review = Review.new(form_param)

    # we want to check if the model can be saved
    # if it is, we are go to home page again
    # if it isn't, show the new form
    if @review.save
      redirect_to root_path
    else
      # show the view for new.html.erb
      render "new"
    end

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
    if @review.update(form_param)
      # redirect somewhere new
      redirect_to review_path(@review)
    else
      render "edit" #edit.html.erb
    end
  end

  # self create function
  def form_param
    params.require(:review).permit(:title, :restaurant, :body, :score,
    :ambiance, :price, :cuisine)
  end

end
