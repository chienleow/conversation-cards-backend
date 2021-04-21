class Api::V1::UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        return render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity unless @user.save
        render json: @user, status: :accepted
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end