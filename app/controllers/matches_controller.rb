class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    @messages = Message.where(match: @match)
    @message = Message.new
  end

  def create
    # Match.all.select{ |match| match.user_a == current_user || match.user_b == current_user }
    @matched_users = Match.all.select { |match| match.user_a == current_user || match.user_b == current_user }.map do |match|
      if match.user_a == current_user
        match.user_b
      else
        match.user_a
      end
    end

    @unmatched_users = User.all - @matched_users

    if current_user.is_refugee == true
      @match_user = @unmatched_users.select { |user| user.is_refugee == false }.sample
    else
      @match_user = @unmatched_users.select { |user| user.is_refugee == true }.sample
    end

    Match.create(user_a: current_user, user_b: @match_user)
    redirect_to matches_path
  end
end
