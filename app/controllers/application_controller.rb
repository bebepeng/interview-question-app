class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def questions_json(questions)
    result = []
    questions.each do |question|
      hash = question.as_json
      result << hash
    end
    result.to_json
  end
end
