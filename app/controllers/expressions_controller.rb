class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
    # generate a number betweem first and last expresion id
    init_num = Expression.first.id
    last_num = Expression.last.id
    generated_expression_id = rand(init_num..last_num)

    @expressionsample = Expression.find(generated_expression_id)
  end

  def show
    @expression = Expression.find(params[:id])
  end
end
