class QuestionsController < ApplicationController
  def edit
    @question = Question.find params[:id]
  end

  def index
    page = params[:page] || 1
    per_page = params[:per_page] || 1

    @questions = Question.paginate(page: page, per_page: per_page)
  end

  def new
  end

  def show
    @question = Question.find params[:id]
  end

  def do_create
    record = Question.create! params[:question]
    redirect_to question_path record
  end

  def do_delete
    Question.find(params[:id]).destroy
  end

  def do_update
    record = Question.find params[:id]
    record.update_attributes! params[:question]

    redirect_to question_path record
  end
end
