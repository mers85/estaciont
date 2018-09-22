class Screenshot < ApplicationRecord
  enum status: { green: 0, yellow: 1, red: 2 }

  belongs_to :camera
  has_one_attached :image
  has_many :alerts
end
