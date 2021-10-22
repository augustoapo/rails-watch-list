class Movie < ApplicationRecord
  before_destroy :validate_bookmark
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  private
  def validate_bookmark 
    self.bookmarks.empty?
  end
end


