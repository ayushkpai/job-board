class Job < ApplicationRecord
  validates :title, :company, :salary, :region, presence: true
  validate :has_apply_method

  def has_apply_method
    unless apply_url? || apply_email?
      errors.add(:base, "Please provide an apply URL or email")
    end
  end
end
