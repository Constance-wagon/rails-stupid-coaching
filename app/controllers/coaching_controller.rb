class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(params[:query])
  end

  def ask
  end

  def send_question
    @question = params[:query]
    redirect_to action: "answer", query: @question
  end

private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
