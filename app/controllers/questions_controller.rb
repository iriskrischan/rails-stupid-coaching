class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    if @input == 'I am going to work'
      @answer = 'Great!'
    elsif @input.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

#  coach (poor) logic, here it is:

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
