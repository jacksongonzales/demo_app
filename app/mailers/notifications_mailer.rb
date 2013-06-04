class NotificationsMailer < ActionMailer::Base

  default :from => "jacksongonzales@murmur.mygbiz.com"
  default :to => "akshay@roomhunt.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end
end