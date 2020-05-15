class QuestionsController < ApplicationController
    def index
        @questions = Question.all.order("id DESC")
    end

    def create
        Question.create(question_params)
    end

    
    private

    def question_params
        params.permit(:title, :detail)
    end

end
