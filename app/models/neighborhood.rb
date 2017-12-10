class Neighborhood < ApplicationRecord
  belongs_to :city_id
  has_many :walks, dependent: :destroy
  has_many :stores, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :museums, dependent: :destroy
end
