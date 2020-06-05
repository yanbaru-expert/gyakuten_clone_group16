class MovieEditCoursesController < ApplicationController
  def index
    @movie_edit_courses = MovieEditCourse.all
  end
end
