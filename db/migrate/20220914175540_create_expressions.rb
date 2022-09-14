class CreateExpressions < ActiveRecord::Migration[6.1]
  def change
    create_table :expressions do |t|
      t.string :sentence
      t.string :definition

      t.timestamps
    end
  end
end
