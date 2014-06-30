class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @questions = questions_json(Question.all)
  end
end