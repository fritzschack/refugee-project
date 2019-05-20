class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @messages = Message.where(match: @match)
    @message = Message.new
  end

  def create
    if current_user.is_refugee == true
      @match_user = User.where(is_refugee: false).sample
    else
      @match_user = User.where(is_refugee: true).sample
    end

    Match.create(user_a: current_user, user_b: @match_user)
    redirect_to matches_path
  end
end
