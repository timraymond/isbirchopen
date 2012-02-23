class Location < ActiveRecord::Base
  has_many :hours

  def status(time = Time.now)
    #returns true if the location is open, false if not
    self.hours.map do |hour|
      hour.span.cover?(time)
    end.reduce(false) do |found, span|
      if span == true
        found = true
      end
    end
    #self.hours.each do |hour|
    # return true if hour.span.cover?(Time.now)
    #end
    #return false
  end
end
