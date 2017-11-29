class QuestionsController < ApplicationController


  def index
    @questions = Question.all
    @question_most_recent = Question.most_recent
    render :index
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    render :show
  end

  def new
    @question = Question.new
    render :new
  end

  def create

    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question successfully added!"
      redirect_to  questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
    render :edit
  end

  def update
   @question= Question.find(params[:id])
   if @question.update(question_params)
     redirect_to questions_path
   else
     render :edit
   end

   def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
end

private
  def question_params
    params.require(:question).permit(:heading, :post)
  end

end
