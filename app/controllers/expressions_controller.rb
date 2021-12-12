class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
    @expressionsample = @expressions.sample
  end

  def show
    @expression = Expression.find(params[:id])
  end
end
