class Event < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :exp, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :desc, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
