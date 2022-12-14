class ApplicationController < ActionController::Base

    before_action :fetch_user

    def fetch_user

        if session[:user_id].present?
            @current_user = User.find_by id:session[:user_id]
        end # login check

        unless @current_user.present?
            session[:user_id] = nil
        end

    end # login check


    def check_if_logged_in

        if !@current_user.present? || !@current_user.admin
            flash[:error] = 'You must be logged in to perform that action'
            redirect_to login_path
        end

    end # check_if_logged_in


end # class ApplicationController
