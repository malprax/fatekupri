class Admin::ApplicationController < Admin::ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin/application'
end
