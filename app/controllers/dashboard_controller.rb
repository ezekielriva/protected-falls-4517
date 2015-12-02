class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_title
  before_action :set_subtitle

  layout "dashboard"

  def show
  end

  protected

  def set_title
    @title = params[:controller].titleize
  end

  def set_subtitle
    @subtitle = params[:action].titleize
  end
end
