class NotificationsMailer < ActionMailer::Base

  default :from => "jackson.gornzales@gmail.com"

  def form_email(message)
#    puts message + "MESSAGE"
    arr = message.split(',')
    @hash = arr[4].strip()
#    puts @hash + "HASH"
    hashids = Hashids.new("newuser", 16)
#    puts "++++" + hashids.to_s
    userid = hashids.decrypt(@hash)
#    puts "_____" + userid.to_s
    user = User.find_by_id(userid[0])

    arr = message.split(',')
    @name = arr[0] 
    @email = arr[1]
    @subject = arr[2]
    @body = arr[3]
   mail(:to => user.email, :subject => "Here's your form: #{@subject}")
  end

end
