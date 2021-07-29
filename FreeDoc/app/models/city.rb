class City < ApplicationRecord
  belongs_to :country
  has_many :cities_users
  has_many :users, through: :cities_users
end
