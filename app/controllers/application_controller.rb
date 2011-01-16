class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_includes_collections

  private

  def init_includes_collections
    @stylesheets = ["formtastic", "style", "facebox"]
    @javascripts = [:jquery, :rails, :facebox, :application ]
  end
end
