class Community < ApplicationRecord
    has_many :communities_users
    has_many :users, through: :communities_users
    has_many :posts
    has_one_attached :image    
end
