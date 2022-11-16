class User < ApplicationRecord
  has_many :favorites

  validates :email, uniqueness: true

end
