class StaticPagesController < ApplicationController
  def key
  end

  def link
    key = params[:key]
    redirect_to(root_path) unless key.downcase == "wendy"
  end
end
