class User < ActiveRecord::Base
  attr_accessible :email, :name, :passwordproblem

  has_many :problempost

  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, uniqueness: {case_sensitive: false},
             length: {maximum: 110}, format: {with: VALID_EMAIL_REGEX}
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :password, presence: true, length: {minimum: 6, maximum: 14}
end
