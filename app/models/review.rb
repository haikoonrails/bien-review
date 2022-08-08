class Review < ApplicationRecord

  # add 1 to many relationship
  has_many :comments
  has_many :bookmarks

  belongs_to :user

  geocoded_by :address
  after_validation :geocode

  validates :title, presence: true
  validates :body, length: {minimum: 10}
  validates :score, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10}
  validates :restaurant, presence: true
  validates :price, presence: true
  validates :address, presence: true

  def to_param
    # get the ID and turn it to string id.to_s
    id.to_s + "-" + title.parameterize
  end
end
