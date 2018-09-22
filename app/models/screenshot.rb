class Screenshot < ApplicationRecord
  belongs_to :camera
  has_one_attached :image
end
