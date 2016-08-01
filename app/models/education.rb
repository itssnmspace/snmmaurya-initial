class Education < ApplicationRecord
  belongs_to :user
  scope :active, -> {where(status: true)}
end