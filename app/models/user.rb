class User < ApplicationRecord

  has_many :reviews
  has_many :comments
  has_many :bookmarks

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

# i don't know is it necessary ?
# bcz website works without this function :/
  def to_param
    username
  end


end
