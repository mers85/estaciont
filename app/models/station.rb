class Station < ApplicationRecord
  has_many :cameras
  has_many :workers
end
