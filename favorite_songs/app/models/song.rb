class Song < ActiveRecord::Base
  validates :title, length: { minimum: 1, maximum: 125 }, presence: true
  validates :artist, presence: true
  validates :user_id, presence: true

  belongs_to :user 
end
