class PagesController < ApplicationController
  def home
  end

  def quiz
    # generate a number betweem first and last expresion id
    init_num = Expression.first.id
    last_num = Expression.last.id
    generated_expression_id = rand(init_num..last_num)

    # get an expression based on generated id number
    @expression = Expression.find(generated_expression_id)
    @sentence = @expression.sentence
    @definition = @expression.definition

    # generate a number betweem first and last option id
    init_num_option = Option.first.id
    last_num_option = Option.last.id
    generated_option_id = rand(init_num_option..last_num_option)

    # get an option based on generated id number
    @option = Option.find(generated_option_id)
    @second_option = @option.option
  end

  # private

  # def expression_params
  #   params.require(:expression).permit(
  #     :sentence,
  #     :definition
  #   )
  # end

  # def option_params
  #   params.require(:option).permit(
  #     :option
  #   )
  # end
end
