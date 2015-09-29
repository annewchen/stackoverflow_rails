class User < ActiveRecord::Base
  has_many :questions

  validates :username, :password, presence: true
end
