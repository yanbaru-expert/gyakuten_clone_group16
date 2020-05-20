class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.references :question, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
