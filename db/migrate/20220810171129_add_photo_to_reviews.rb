class AddPhotoToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :photo, :string # table name - column name we add - type
  end
end
