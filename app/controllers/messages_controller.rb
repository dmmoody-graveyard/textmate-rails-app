class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Successfully saved"
<<<<<<< HEAD
      redirect_to messages_path
=======
      redirect_to contacts_path
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
    else
      render :new
    end
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end

end
