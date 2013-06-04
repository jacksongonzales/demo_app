class ContactController < ApplicationController
  def new
    @message = Contact.new
  end

  def create
    @message = Contact.new(params[:contact])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to("/", :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end
end
