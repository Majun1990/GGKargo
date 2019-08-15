class ApplicationController < ActionController::Base
def after_sign_in_path_for(user)
  shippers_path
end
end
