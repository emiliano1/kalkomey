class QuestionsController < ApplicationController
  def index
    load_questions
  end

  def show
    load_question
  end

  protected

  def load_questions
    @questions = Question.all
  end

  def load_question
    @question = Question.find(params[:id])
  end
end
