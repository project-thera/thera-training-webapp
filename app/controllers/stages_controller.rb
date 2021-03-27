class StagesController < ApplicationController
  before_action :redirect_to_sign_in, unless: :user_signed_in?

  def index
    respond_to do |format|
      format.html do
        render html: '', layout: true
      end
      format.json do
        render json: Stage.all
      end
    end
  end
end