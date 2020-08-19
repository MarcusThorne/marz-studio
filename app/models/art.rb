class Art < ApplicationRecord
  belongs_to :user
  # validates :name, :style, :price, :description, :photo, :artist, presence: true
  has_one_attached :photo
end
