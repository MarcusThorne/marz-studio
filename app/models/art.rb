class Art < ApplicationRecord
  belongs_to :user
  # validates :name, :style, :price, :description, :photo, :artist, presence: true
  has_one_attached :photo

  enum style: [ :abstract, :fine_art, :modern, :figurative, :abstract_expressionism, :expressionism, :realism, :conceptual_impressionism, :surrealism, :portraiture, :pop_art, :minimalism, :illustration, :street_art, :documentary, :art_deco, :photorealism, :folk, :cubism, :dada ]
  enum category: [ :paintings, :photogrpahy, :drawings, :new_media, :sculpture, :collage, :printmaking, :installation, :video ]
  enum subject: [ :landscape, :people, :portrait, :nature, :animal, :women, :floral, :still_life, :nude, :fantasy, :architecture, :seascape, :cities, :body, :love, :botanic, :world_culture, :beach, :culture, :geometric, :pop_culture, :erotic, :places, :religious, :music ]

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
