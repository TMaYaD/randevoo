class UsersController < ApplicationController

  # GET /user
  # GET /user.json
  def show
  end

  # POST /user
  # POST /user.json
  def create
    @user = User.where(uuid: user_params[:uuid]).first_or_initialize
    @user.update user_params

    if @user.save
      render action: 'show', status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:user_uuid])
    @user.destroy
    head :ok
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:uuid, :gcm_id, :name, :latitude, :longitude)
    end
end
