class PolicyController < ApplicationController
    def show
        render template: "policy/#{params[:page]}"
    end
end
