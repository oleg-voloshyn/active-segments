class Race < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :segments, dependent: :destroy
end
