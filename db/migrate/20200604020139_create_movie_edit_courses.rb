class CreateMovieEditCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_edit_courses do |t|
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
