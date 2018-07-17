class Subscription < ActiveRecord::Base
  attr_accessible :email, :name

  belongs_to :User

  VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, uniqueness: {case_sensitive: false},
             length: {maximum: 110}, format: {with: VALID_EMAIL_REGEX}

end
