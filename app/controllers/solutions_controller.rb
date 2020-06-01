class SolutionsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
    if @solution.save
      redirect_to question_path(@question.id), notice: "回答の投稿をしました"
    else
      @solutions = @question.solutions.order("id DESC")
      flash.now[:alert] = "回答の投稿に失敗しました。"
      render "questions/show"
    end
  end

  private

    def solution_params
      params.require(:solution).permit(:answer)
    end
end
