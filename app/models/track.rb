class Track < ApplicationRecord
    has_many :user_tracks
    has_many :users, through: :user_tracks

    validates :title, uniqueness: true
    validates :title, presence: true
    validates :video_id, presence: true
    validates :video_id, uniqueness: true
end
