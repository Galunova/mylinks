class Link < ApplicationRecord

  validates :url, presence: true, length: { minimum: 6 }

  self.per_page = 20

  def owner?(user)
    user_id == user.id
  end
end
