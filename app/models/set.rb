class Set < ApplicationRecord

  belongs_to :workout
  has_one :exercise

end
