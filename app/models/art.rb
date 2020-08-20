class Art < ApplicationRecord
  belongs_to :user
  # validates :name, :style, :price, :description, :photo, :artist, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_artist,
    against: [ :name, :artist ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :filter_by_style_and_price,
    against: [ :style, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
