require 'spec_helper'

describe ApplicationController do
  it 'returns the json for a list of questions' do
    q1 = Question.create!(content: 'Question1')
    q2 = Question.create!(content: 'Question2')
    json = [{
              id: q1.id,
              content: q1.content,
            },
            {
              id: q2.id,
              content: q2.content,
            }
    ].to_json
    expect(controller.questions_json(Question.all)).to eq json
  end
end
