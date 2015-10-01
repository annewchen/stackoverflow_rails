class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @question=Question.find_by(id: params[:question_id])
    @answer=current_user.answers.new(answer_params)

    if @answer.save
      @question.answers << @answer
      redirect_to question_path(@question)
    else
      render 'new'
    end
  end


  private
  def answer_params
    params.require(:answer).permit(:description)
  end
end
