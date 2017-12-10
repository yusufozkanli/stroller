class Walk < ApplicationRecord
  belongs_to :city_id
  belongs_to :neighborhood_id
  belongs_to :user_id
  has_many :stores, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :museums, dependent: :destroy
end
