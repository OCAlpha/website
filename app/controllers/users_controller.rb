class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:index, :update]
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  
  def new
    @user = User.new(params[:user])
  end
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
    @bio = @user.bio
    @payments = @user.payments
    @charges = @user.charges
    @purchases = @user.purchases
    @transfers = @user.transfers
    @collections = @user.collections
    
    @payments_sum = @payments.sum(:amount_paid)
    @charges_sum = @charges.sum(:override_value)
    @collections_sum = @collections.sum(:amount_paid)
    @purchases_sum = @purchases.sum(:purchase_amount)
    @transfers_sum = @transfers.sum(:value)
  end
  
  def create
    @user = User.new(params[:user])
    @user.active = false
    if(@user.save)
      sign_in @user
      flash[:success] = "Your account has been created and is awaiting officer activation."
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  
  private
    
end
