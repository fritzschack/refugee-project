class QuestionsController < ApplicationController
  def index
    @questions = Question.all.reverse_order
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    raise
  end

  def new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    @question.save
    redirect_to questions_path
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def question_params
    params.require(:question).permit(:title, :text)
  end
end
