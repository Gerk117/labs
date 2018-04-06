class MainResult < ApplicationRecord
  validates :numbers, uniqueness: true
end
