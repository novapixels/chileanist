class RemoveOptionIdFromExpressions < ActiveRecord::Migration[6.1]
  def change
    remove_column :expressions, :option_id, :string
  end
end
