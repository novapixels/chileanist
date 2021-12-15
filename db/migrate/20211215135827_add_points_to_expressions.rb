class AddPointsToExpressions < ActiveRecord::Migration[6.1]
  def change
    add_column :expressions, :points, :integer
  end
end
