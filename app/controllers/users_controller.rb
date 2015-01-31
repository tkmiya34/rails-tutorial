class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :corrent_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy]
  before_action :redirect_root, only: [:new, :create]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    user = User.find(params[:id])
    return redirect_to(root_path) if current_user?(user)

    user.destroy
    flash[:success] = "User destroyed"
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def signed_in_user
    return if signed_in?

    store_location
    redirect_to signin_url, flash: { warning: "Please sign in." } unless signed_in?
  end

  def corrent_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end

  def redirect_root
    return unless signed_in?

    redirect_to root_url
  end
end
