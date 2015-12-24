class HomesController < ApplicationController
  skip_before_action :require_login, :authorize

  def show
  end

end
