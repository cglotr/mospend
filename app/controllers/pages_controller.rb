class PagesController < ApplicationController
  def hello
  end

  def home
    redirect_to action: "hello" unless user_signed_in?
  end
end
