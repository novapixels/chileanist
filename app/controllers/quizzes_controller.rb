class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new

    # generate a number betweem first and last expresion id
    init_num = Expression.first.id
    last_num = Expression.last.id
    first_generated_expression_id = rand(init_num..last_num)
    second_generated_expression_id = rand(init_num..last_num)
    # stores a random expretion into a variable
    @expressionsample = Expression.find_by_id(first_generated_expression_id)
    @expressionsample = @expressionsample.definition
    # display two definition (one correct, one incorrect)
    @expressionsample_2 = Expression.find_by_id(second_generated_expression_id)
    @expressionsample_2 = @expressionsample_2.definition

    @shuffled_options = [@expressionsample, @expressionsample_2].shuffle
    # if user clicks on correct definition, add 1 point to score
    @new_score = Score.new(:points => 0)
    @new_score.save
    @points = @new_score.points

    right_answer_click = params[first_generated_expression_id]
    wrong_answer_click = params[second_generated_expression_id]
    if right_answer_click.present?
      @points += 1
      @points.save
    # if user clicks on incorrect definition, do nothing
    else wrong_answer_click.present?
      @points += 0
      #@points.save
    end

    # @score = @quiz.score
  end

  def create
    @quiz = Quiz.new(params[:quiz])
    @quiz.save
    # @quiz.score = Score.new(:points => 0)
    # @quiz.score.save
    redirect_to @quiz
  end

  def show
    # @quiz = Quiz.find(params[:id])

    # # generate a number betweem first and last expresion id
    # init_num = Expression.first.id
    # last_num = Expression.last.id
    # generated_expression_id = rand(init_num..last_num)
    # # stores a random expretion into a variable
    # @expressionsample = Expression.find_by_id(generated_expression_id)
    # # display two definition (one correct, one incorrect)
    # @expressionsample2 = Expression.find_by_id(generated_expression_id + 1)
    # # if user clicks on correct definition, add 1 point to score
    # @new_score = Score.new(:points => 0)
    # @new_score.save
    # button_click = params[generated_expression_id]
    # if button_click.present?
    #   @quiz.score.points += 1
    #   @quiz.score.save
    # # if user clicks on incorrect definition, do nothing
    # else
    #   @quiz.score.points += 0
    #   @quiz.score.save
    # end

    # @score = @quiz.score

  end

  private

  # def quizz_params
  #   params.require(:quizzes).permit(
  #     :expression_id,
  #     :score_id
  #   )
  # end
end
