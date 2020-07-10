class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.integer :user_id, null: false, index: true
      t.integer :movie_id, null: false, index: true

      t.timestamps
    end
      add_index :watches, [:user_id, :movie_id], unique: true
  end
end
