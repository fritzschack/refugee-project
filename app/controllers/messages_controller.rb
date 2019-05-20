class MessagesController < ApplicationController
  def create
    @message = Message.new(match_id: params[:match_id], user: current_user, text: params[:message]["text"])
    @message.save
    redirect_to match_path(params[:match_id])
  end
end
