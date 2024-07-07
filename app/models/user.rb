class User < ApplicationRecord
  has_many :events
  has_many :attendances, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event
end
