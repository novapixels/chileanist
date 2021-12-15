class AddSecondoptionToExpressions < ActiveRecord::Migration[6.1]
  def change
    add_column :expressions, :secondoption, :string
  end
end
