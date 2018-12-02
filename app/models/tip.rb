class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :to_user
end
