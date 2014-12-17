require "pry"
class AnswersController < ApplicationController

  def create
    # binding.pry
    @answer = Answer.new(question_id: params["question_id"], description: params["answer"][:description])
    if @answer.save
      flash[:notice] = "Your answer was submitted!"
      redirect_to question_path(@answer.question)
    else
      flash.now[:notice] = "There were problems processing your answer!"
      render :index
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end
end
