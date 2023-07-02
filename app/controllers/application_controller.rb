class ApplicationController < ActionController::Base
    def new
        render :new
    end
    before_action :authenticate_user!
end
