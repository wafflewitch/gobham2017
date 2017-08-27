class Event < ApplicationRecord
  belongs_to :users

  validates :user_id, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :exp, presence: true
  validates :location, presence: true
  validates :name, presence: true
  validates :desc, presence: true
end
