class Entry < ApplicationRecord
  belongs_to :roommate
  after_initialize :init
  validates :text, presence: true
  validates :respect_gained, presence: true
  validates :date, presence: true

  def init
    self.date ||= Time.now if self.new_record?
  end
end
