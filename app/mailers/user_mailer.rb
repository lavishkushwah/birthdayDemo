class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.birthday_wish.subject
  #
  def birthday_wish(user)
  	@user = user
    @greeting = "Hi"

    mail to: @user.email, subject: "Birthday Wish"
  end
end
