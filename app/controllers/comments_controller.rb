class CommentsController < ApplicationController
  def create

    @review = Review.find(params[:review_id])

    @comment = @review.comments.new(params.require(:comment).permit(:body))

    @comment.save

    # redirect to show page (reciew_path)
    redirect_to review_path(@review)

  end
end
