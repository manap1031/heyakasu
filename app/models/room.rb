class Room < ApplicationRecord
  has_one_attached :image

  validates :image,            presence: true
  validates :prefectures,      presence: true
  validates :postal_code,      presence: true
  validates :city,             presence: true
  validates :town,             presence: true
  validates :building,         presence: true
  validates :phone_number,     presence: true
end
