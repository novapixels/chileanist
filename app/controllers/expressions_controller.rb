class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
    @expressionsample = @expressions.sample
  end

  def show
    @expression = Expression.find(params[:id])
  end

  def quiz
    @expressions = Expression.all
  end
end
