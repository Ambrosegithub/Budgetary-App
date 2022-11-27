# frozen_string_literal: true

class SplashController < ApplicationController
  def index
    current_user = User.find_by(id: session[:user_id])
  end

  def show; end
end
