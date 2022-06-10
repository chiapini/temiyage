class ApplicationController < ActionController::Base
  before_action :confiqure_permitted_parameters, if: :devise_controller?

  private

  def after_sign_in_path_for(_resource)
    top_index_path
  end

  def confiqure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :gender, :situation, :children, :age_id, :job_id, :area_id, :think_id])
  end
end

