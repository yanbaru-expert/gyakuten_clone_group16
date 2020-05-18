class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :detail
      t.timestamps
    end

    create_table :solutions do |t|
      t.string :title
      t.text :detail
      t.string :answer
    end
  end
end
