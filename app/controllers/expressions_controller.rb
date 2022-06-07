class ExpressionsController < ApplicationController
  def index
    @expressions = Expression.all
    # generate a number betweem first and last expresion id
    init_num = Expression.first.id
    last_num = Expression.last.id
    generated_expression_id = rand(init_num..last_num)
    # stores a random expretion into a variable
    @expressionsample = Expression.find_by_id(generated_expression_id)

    button_click = params[generated_expression_id]

    if button_click.present?
      "#{@expressionsample[:sentence]} #{@expressionsample[:definition]} "
    end

  end

  def show
    @expression = Expression.find(params[:id])
  end

  def update
    respond_to do |format|
        format.html do
          render(@expression)
        end

        format.json { render(:show, sentence: @expression)}
     end
  end

  # private

  # def expression_params
  #   params.require(:expression).permit(
  #     :sentence,
  #     :definition
  #   )
  # end
end
