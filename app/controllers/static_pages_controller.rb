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
    passphrase = params[:passphrase]
    redirect_to(secret_path) unless passphrase.downcase == "la blanquette est bonne"
  end
end
