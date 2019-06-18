class TracksController < ApplicationController

    def create
        track = Track.find_or_create_by(track_params)
        if track
            user = User.find_by(name: params[:user_name])
            UserTrack.create(user_id: user.id, track_id: track.id)
            render json: track
        else
            render json: { errors: track.errors.full_messages }, status: 404
        end
    end

    private

    def track_params
        params.permit(:title, :video_id)
    end

end
