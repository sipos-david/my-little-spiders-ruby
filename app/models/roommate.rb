class Roommate < ApplicationRecord
    has_many :entries, dependent: :destroy
end
