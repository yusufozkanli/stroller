class Shop < ApplicationRecord
  belongs_to :city
  belongs_to :neighborhood
  belongs_to :walk
end
