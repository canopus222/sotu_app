class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[top privacy_policy terms_of_service]

  def top; end

  def privacy_policy; end

  def terms_of_service; end

  def contact_us; end
end
