class AnswersController < ApplicationController
  before_action :authorize, only: [:edit, :destroy]
    def new
      @question = Question.find(params[:question_id])
      @answer = @question.answers.new
    end

  def create
      @question = Question.find(params[:question_id])
      @answer = @question.answers.new(answer_params)
      if @answer.save
        redirect_to question_path(@answer.question)
      else
        render :new
      end
    end

    def edit
      @question = Question.find(params[:question_id])
      @answer = Answer.find(params[:id])
    end

    def update
     @question = Question.find(params[:question_id])
     @answer= Answer.find(params[:id])
     if @answer.update(answer_params)
       redirect_to answers_path(@answer.question)
     else
       render :edit
     end
   end

   def destroy
     @question = Question.find(params[:question_id])
     @answer = Answer.find(params[:id])
     @answer.destroy
     redirect_to question_path(@answer.question)
   end



  private
    def answer_params
      params.require(:answer).permit(:body, :question_id)
    end
end
