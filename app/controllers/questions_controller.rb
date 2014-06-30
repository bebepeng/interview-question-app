class QuestionsController < ApplicationController
  def index
    @question = Question.all[0]
  end
end