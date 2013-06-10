class ContactController < ApplicationController

  def new
    @message = Contact.new
  end

  def create
    @message = Contact.new(params[:contact])
    puts "___________" + params[:hash].to_s

    if @message.valid?
      NotificationsMailer.form_email("#{@message.name}, #{@message.email}, #{@message.subject}, #{@message.body}, #{params[:hash]}").deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

  def createform
  end
end
