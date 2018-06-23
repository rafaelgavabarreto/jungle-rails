class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMINISTRATOR"], password: ENV["PASSWORD"]
  # The ENV is not working in my computer
  http_basic_authenticate_with name: "Jungle", password: "book"

  def show
  end
end
