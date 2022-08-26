class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates_uniqueness_of :movie, scope: :list
  validates :comment, length: { minimum: 6 }
end
