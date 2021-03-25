class Stage < ApplicationRecord
  has_many :photos

  def base_id
    # "phase_#{phase.id}__exercise_#{exercise.id}__stage_#{id}"
    "stage__#{id}"
  end
end
