class QuestionsController < ApplicationController
  def index
    @questions = questions_json(Question.all)
  end
end