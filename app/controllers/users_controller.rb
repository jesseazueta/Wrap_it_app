class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy, :contacts]
  before_filter :current_user

  def index
    @users = User.all
    @users = User.order(:last_name).all
    @list = @users.group_by{ |user| user.last_name[0] }
    #
    # @contact= Contact.new
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    # only want to be able to edit account of person logged in
    @user = @current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/users/#{current_user.id}", notice: "Welcome to Wrap-it #{current_user.first_name}"
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Profile updated!'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'Profile deleted!'
  end

  def contacts

    @contact_list = current_user.friends.order(:last_name).all.group_by{ |friend| friend.last_name[0] }
    render :contacts
  end

  def contact_delete
    friend = Friendship.find_by(friend_id: params[:id])
    friend.destroy
    redirect_to :back
    # render json: friend.email
  end



  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :image)
  end
end
