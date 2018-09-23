class Station < ApplicationRecord
  has_many :cameras
  has_many :workers
  has_many :reports
end
