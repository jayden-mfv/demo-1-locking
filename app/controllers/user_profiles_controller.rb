# frozen_string_literal: true

class UserProfilesController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :set_user, only: %i[create destroy_all]

  def index
    redirect_to user_profiles_url
  end

  def create
    UserProfiles::CreateService.call!(user: @user)

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User Profile was successfully created.' }
      format.json { render json: UserProfile.where(user: @user), status: :created }
    end
  end

  def destroy_all
    UserProfile.where(user: @user).destroy_all

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'All User Profiles were successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_profile
    @user_profile = UserProfile.find(params[:user_profile_id])
  end
end
