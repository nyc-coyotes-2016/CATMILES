class User < ActiveRecord::Base
  has_secure_password

  validates :username, length: { minimum: 6, maximum: 35 }, presence: true, uniqueness: true
  validates :email, uniqueness: true, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, length: { minimum: 8, maximum: 36 }
  has_many :songs
end
