class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :fix_comments
end
