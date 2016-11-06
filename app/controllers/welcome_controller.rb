class WelcomeController < ApplicationController
  def index
    render json: {status: 200, message: "It is working!"}
  end
end
