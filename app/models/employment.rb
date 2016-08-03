class Employment < ApplicationRecord
  belongs_to :user
  scope :active, -> {where(status: true)}

  def get_started_at
    self.started_at.to_datetime
  end

  def get_end_at
    self.started_at.to_datetime
  end
end