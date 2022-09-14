class CreateExpressions < ActiveRecord::Migration[6.1]
  def change
    create_table :expressions do |t|
      t.string :sentence
      t.string :definition
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
