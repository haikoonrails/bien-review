class Comment < ApplicationRecord
  belongs_to :review

  belongs_to :user

  validates :body, presence: true

  # it would be rise and error in our codes
  #profanity_filter :body
end
