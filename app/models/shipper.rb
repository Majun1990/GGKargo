class Shipper < ApplicationRecord
  belongs_to :user
  has_many :consignee
end
