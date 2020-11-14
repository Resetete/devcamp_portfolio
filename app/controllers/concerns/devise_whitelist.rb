module DeviseWhitelist
  # provides functionality from the Concern class
  extend ActiveSupport::Concern

  # to run the before_action we need to include it; the following method is provided by Concern
  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  # permit the parameters we added to devise (here it is just name)
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
