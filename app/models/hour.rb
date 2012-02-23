class Hour < ActiveRecord::Base
  belongs_to :location

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
