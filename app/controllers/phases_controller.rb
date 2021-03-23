class PhasesController < ApplicationController
  before_action :redirect_to_sign_in, unless: :user_signed_in?

  before_action :set_phase, only: [:show, :exercises]

  def show
    @user = current_user
  end

  def exercises
    respond_to do |format|
      format.json do
        render json: @phase.to_json(include: { exercises: { include: :stages }})
      end
    end

  end

  private

  def set_phase
    @phase = Phase.joins(exercises: :stages).includes(exercises: :stages).find(params[:id])
  end
end