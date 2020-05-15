class QuestionsController < ApplicationController
    def index
        @question = Question.new
        @questions = Question.all.order("id DESC")
    end

    def create
        Question.create(question_params)
    end

    
    private

    def question_params
        params.require(:question).permit(:title, :detail)
    end

end
