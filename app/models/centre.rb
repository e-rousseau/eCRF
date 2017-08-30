class Centre < ApplicationRecord
  belongs_to :study
  validates :centre_code, uniqueness: true
end
