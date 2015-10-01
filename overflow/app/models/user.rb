class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  validates :username, :password, presence: true
end
