class QuizzesController < ApplicationController

  def index
    # @new_quizz = Quizz.new
  end

  def new
    # @new_score = Score.new(:points => 0)
    # @new_quizz = Quizz.new

    # @new_quizz_id = @new_quizz.id
  end

  private

  def quizz_params
    params.require(:quizzes).permit(
      :expression_id,
      :score_id
    )
  end
end
