class FriendshipsController < ApplicationController
    before_action :set_friends, only: :destroy
    load_and_authorize_resource


    # GET /friendships
    def index
        @friends = Friendship.find(user_id: current_user.id)
        
        render json: @friends
    end

    
    # POST /friendships
    def create
        friend_id = params[:friend_id]
        @friends = Friendship.new({friend_id: friend_id})
        @friends.user_id = current_user.id

        if @friends.save
            render json: @friends, status: :created
        else
            render json: @friends.errors, status: :unprocessable_entity
        end
    end
    
    # DELETE /likes/1
    def destroy
        @friends.destroy
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_friends
            @friends = friends.find(params[:id])
        end

end