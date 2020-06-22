class MainController < ApplicationController
  def index
	  @users = User.all
  end
  def viewall
		user = User.all
		render :json => user
  end
  def today_birthday
		@user = User.all
    @user_array = Array.new
    @user.each do |user|
      user_hash = Hash.new
      if Date.today.strftime("%d-%m") == user.dob.strftime("%d-%m")
        user_hash[:id] = user.id
        user_hash[:firstname] = user.firstname
        user_hash[:lastname] = user.lastname
        user_hash[:email] = user.email
        user_hash[:dob] = user.dob
        @user_array.push(user_hash)
      end
    end
  end
  def wish_birthday
    @user = User.find(params[:id])
  	UserMailer.birthday_wish(@user, current_user).deliver_now
    redirect_to main_today_birthday_url, :notice => "Birthday Mail Sent!"
  end
end
