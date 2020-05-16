class QuestionsController < ApplicationController
    def index
        @question = Question.new
        @questions = Question.all.order("id DESC")
    end

    def create
        @question = Question.new(question_params)
        if @question.save
            redirect_to questions_path, notice: "投稿に成功しました。"
        else
            redirect_to questions_path, notice: "投稿に失敗しました。"
        end
    end

    
    private

    def question_params
        params.require(:question).permit(:title, :detail)
    end

end
