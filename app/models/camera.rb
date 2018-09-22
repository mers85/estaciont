class Camera < ApplicationRecord
  belongs_to :station
  has_many :screenshots
end
