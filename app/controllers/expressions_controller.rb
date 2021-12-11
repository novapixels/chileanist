class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
  end

  def show
    @expression = Expression.find(params[:id])
  end
end
