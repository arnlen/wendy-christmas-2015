class StaticPagesController < ApplicationController
  def key
  end

  def link
    key = params[:key]
    redirect_to(root_path) unless key.downcase == "wendy"
  end

  def secret
  end

  def surprise
    question = params[:question]
    answer = params[:answer]

    correct_question = "comment est votre blanquette ?"
    correct_answer = "la blanquette est bonne"

    unless question.downcase == correct_question && answer.downcase == correct_answer
      redirect_to(secret_path)
    end
  end
end
