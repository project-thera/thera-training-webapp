class Stage < ApplicationRecord
  # belongs_to :exercise

  has_many :photos

  # delegate :phase, to: :exercise

  def base_id
    # "phase_#{phase.id}__exercise_#{exercise.id}__stage_#{id}"
    "stage__#{id}"
  end
end
