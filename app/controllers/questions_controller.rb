class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ['Great!', 'Silly question, get dressed and go to work!.', "I don't care, get dressed and go to work!"]

    if params[:question].end_with?("?")
      @answer = @answer[1]
    elsif params[:question] == 'I am going to work'
      @answer = @answer[0]
    else
      @answer = @answer[2]
    end
  end
end
