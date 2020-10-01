class Room < ApplicationRecord
  has_one_attached :image

  validates :image,            presence: true
  validates :prefectures,      presence: true
  validates :postal_code,      presence: true
  validates :city,             presence: true
  validates :town,             presence: true
  validates :building,         presence: true
  validates :phone_number,     presence: true

  def self.search(search)
    if search != ""
      Room.where('text LIKE(?)', "%#{search}%")
    else
      Room.all
    end
  end
end
