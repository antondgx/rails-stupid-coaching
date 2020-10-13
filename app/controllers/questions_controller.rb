class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    if @input == "I am going to work"
      @answer = "Great!"
    elsif @input.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @input
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# def coach_answer(your_message)
#   # TODO: return coach answer to your_message
#   if your_message == "I am going to work right now!"
#     ""
#   elsif your_message.include?("?")
#     "Silly question, get dressed and go to work!"
#   elsif your_message
#     "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   # TODO: return coach answer to your_message, with additional custom rules of yours!
#   case your_message
#   when "I AM GOING TO WORK RIGHT NOW!"
#     ""
#   when your_message.upcase
#     "I can feel your motivation! #{coach_answer(your_message)}"
#   else
#     coach_answer(your_message)
#   end
# end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
