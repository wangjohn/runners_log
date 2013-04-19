class Run < ActiveRecord::Base
  has_one :run_info

  validates_presence_of :distance, :duration
  accepts_nested_attributes_for :run_info, allow_destroy: true

  def set_duration(text)
    time_units = text.split(":")
    seconds = time_units.reverse.each_with_index.map do |unit, index|
      unit.to_i*(60**index)
    end.sum

    update_attributes(duration: seconds)
  end
end
