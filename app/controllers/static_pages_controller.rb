class StaticPagesController < ApplicationController
  def index
    redirect_to trainee_root_path
  end
end
