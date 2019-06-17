class User < ApplicationRecord
    has_many :user_tracks
    has_many :tracks, through: :user_tracks
    has_secure_password

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :name, length: { minimum: 2, maximum: 20 }
    validates :password, presence: true
    validates :password, length: { minimum: 2, maximum: 20 }
end
