class AnswersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    @answer.question = Question.find(params[:question_id])
    @answer.save
    redirect_to question_path(@answer.question)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def answer_params
    params.require(:answer).permit(:text)
  end
end
