class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.xls  #{ send_data @users.to_csv(col_sep: "\t") }
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def dashboard

  end

  def login

  end

  def logout

  end

  protected
  def params_user
    params.require(:user).permit(:name, :salary, :contact)
  end

end
