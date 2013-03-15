class Comment < ActiveRecord::Base
  attr_accessible :comment, :poster, :review_id

  belongs_to :reviews
end
