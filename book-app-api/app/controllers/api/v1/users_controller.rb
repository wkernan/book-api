module Api
  module V1
    # UsersController
    class UsersController < ApplicationController
      def create
        pp params[:event]
        user = User.new(user_params)

        if user.save
          render jsonapi: user, status: :created
        else
          render jsonapi_errors: user.errors
        end
      end

      def index
        @users = User.all
        render jsonapi: @users
      end

      def show
        @user = User.find(params[:id])
        render jsonapi: @user
      end

      private

      def user_params
        params.require(:user).permit(:auth0_id, :email, :first_name, :last_name, :birthday, :bio)
      end
    end
  end
end
