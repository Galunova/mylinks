class Link < ApplicationRecord

  validates :url, presence: true, length: { minimum: 6 }
  validate :bad_word_validation

  self.per_page = 20

  def owner?(user)
    user_id == user.id
  end

  private

  def bad_word_validation
    unless BadWord.new(url).valid?
      errors.add(:url, I18n.t("activerecord.errors.models.link.attributes.url.bad_word"))
    end
  end
end