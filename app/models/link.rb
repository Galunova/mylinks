class Link < ApplicationRecord

  validates :url, presence: true, length: { minimum: 6 }

  self.per_page = 20
end
