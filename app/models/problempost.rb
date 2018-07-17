class Problempost < ActiveRecord::Base
  attr_accessible :User_Id, :likes, :problemdesc, :problemtitle

  belongs_to :user
  has_many :subscription
  
  validates :problemtitle, presence: true, length: {minimum: 20 , maximum: 150}
  validates :problemdesc, presence: true, length: {minimum: 50 , maximum: 240}
  validates :likes, default: 0
end
