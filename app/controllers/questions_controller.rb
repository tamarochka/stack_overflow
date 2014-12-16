class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question was submitted!"
      redirect_to questions_path
    else
      flash.now[:notice] = "There were problems processing your order!"
      render :new
    end
end


  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
