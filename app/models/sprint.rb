class Sprint < ActiveRecord::Base
  validates :number, presence: true, uniqueness: true
  validate :begin_on_cannot_be_after_end_on

  def begin_on_cannot_be_after_end_on
    if begin_on? and end_on? and begin_on > end_on
      errors.add(:begin_on, "can't be after the sprint end date")
    end
  end
end
