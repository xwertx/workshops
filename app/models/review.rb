class Review < ActiveRecord::Base
  
  validates_presence_of :content
  validates_presence_of :user_id
  validates_presence_of :rating

  belongs_to :product
  belongs_to :user
end
