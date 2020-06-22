class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.birthday_wish.subject
  #
  def birthday_wish(user, current_user)
  	@user = user
    @current_user = User.where(id:current_user).first

    mail to: @user.email, subject: "Birthday Wish"
  end
end
