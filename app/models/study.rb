class Study < ApplicationRecord
  has_many :centres, dependent: :destroy
  has_many :forms, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
