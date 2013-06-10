class NotificationsMailer < ActionMailer::Base

  default :from => "jackson.gonzales@gmail.com"

  def form_email(message)
    arr = message.split(',')
    @hash = arr[4].strip()
    hashids = Hashids.new("newuser", 16)
    userid = hashids.decrypt(@hash)
    user = User.find_by_id(userid[0])

    arr = message.split(',')
    @name = arr[0] 
    @email = arr[1]
    @subject = arr[2]
    @body = arr[3]
   mail(:to => user.email, :subject => "Here's your form: #{@subject}")
  end

end
