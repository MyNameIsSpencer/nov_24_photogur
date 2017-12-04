class Picture < ActiveRecord::Base

  validates :title, :url, presence: true
  validates :title, length: {minimum: 3, maximum: 20}
  validates :url, uniqueness: true


  has_and_belongs_to_many :tags
  has_many :comments
  # Now we can do these things!
  # Picture.last.comments
  # Picture.first.comments.count
  # Picture.first.comments.where
  # Picture.first.comments <<
  # Picture.first.tags
  # etc...
end
