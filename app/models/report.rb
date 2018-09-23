class Report < ApplicationRecord
  belongs_to :user
  belongs_to :report_type
  belongs_to :station
end
