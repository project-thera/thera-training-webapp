class Exercise < ApplicationRecord
  belongs_to :phase

  has_many :stages

  def to_array
    exercise = JSON.parse(super)

    exercise['stages'] = self.stages

    exercise
  end
end
