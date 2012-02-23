class PositiveHourValidator < ActiveModel::Validator
  def validate(record)
    if record.open_hour >= record.closed_hour
      record.errors[:open_hour] << 'needs to be before closed hour!'
    end
  end
end

class Hour < ActiveRecord::Base
  belongs_to :location
  validates_presence_of :open_hour, :open_minute, :closed_hour, :closed_minute
  validates_with PositiveHourValidator

  def span
    open = Time.now.beginning_of_week + self.get_day.days + self.open_hour.hours + self.open_minute.minutes
    closed = Time.now.beginning_of_week + self.get_day.days + self.closed_hour.hours + self.closed_minute.minutes

    Range.new(open, closed, true) #Exclusive Range with the open and closed time
  end

  def get_day
    case self.day.downcase
    when "monday" 
      0
    when "tuesday" 
      1
    when "wednesday" 
      2
    when "thursday" 
      3
    when "friday" 
      4
    when "saturday" 
      5
    when "sunday" 
      6
    end
  end
end
