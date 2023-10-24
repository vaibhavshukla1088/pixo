class ApplicationController < ActionController::Base
    respond_to :html, :json, :js

    def after_sign_in_path_for(resource)
        if resource.is_a?(AdminUser) && resource.staff?
          admin_job_openings_path
        else
          super
        end
    end
end
