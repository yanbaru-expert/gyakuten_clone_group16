class PhpLecturesController < ApplicationController

  def index
    @php_lectures = PhpLecture.all
  end
end
