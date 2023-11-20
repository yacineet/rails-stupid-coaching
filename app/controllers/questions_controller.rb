class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ["Great !", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:userinput] == 'I am going to work'
      @answer = @answer[0]
    elsif params[:userinput].include?('?')
      @answer = @answer[1]
    else params[:userinput] != 'I am going to work'
      @answer = @answer[2]
    end
  end
end
