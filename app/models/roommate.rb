class Roommate < ApplicationRecord
  has_many :entries, dependent: :destroy
  after_initialize :init
  validates :name, presence: true
  validates :location, presence: true
  validates :num_of_nightmares, presence: true, :numericality => { greater_than_or_equal_to: 0 }

  def init
    self.num_of_nightmares ||= 0 if self.new_record?
  end
end
