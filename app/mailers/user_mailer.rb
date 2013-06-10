class UserMailer < ActionMailer::Base
  default :from => "jackson.gonzales@gmail.com"

  def welcome_email(user)
    @user = user

    hashid = Hashids.new("newuser", 16)
    @hash = hashid.encrypt(user.id)

    @url  = "http://localhost:3000/users" #make this URL
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end
