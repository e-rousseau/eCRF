class Centre < ApplicationRecord
  belongs_to :study
  validates :centre_code, uniqueness: { scope: :study_id }
end
