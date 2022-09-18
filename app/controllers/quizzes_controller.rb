class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(params[:quiz])
    @quiz.save
    @quiz.score = Score.new(:points => 0)
    @quiz.score.save
    redirect_to @quiz
  end

  def show
    @quiz = Quiz.find(params[:id])
    @score = @quiz.score
    @expressions = Expression.all

  end

  private

  # def quizz_params
  #   params.require(:quizzes).permit(
  #     :expression_id,
  #     :score_id
  #   )
  # end
end
