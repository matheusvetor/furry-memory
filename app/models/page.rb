class Page < ApplicationRecord
  jsonb_accessor :content,
                 h1:     :string,
                 h2:     :string,
                 h3:     :string,
                 links:  :string,
                 parsed: [:boolean, default: false]

  validates :url, presence: true
  validates :url, url: true

  scope :persed, -> { content_where(parsed: true) }
end
