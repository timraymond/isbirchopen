class Location < ActiveRecord::Base
  has_many :hours
  validates_presence_of :name

  def status(time = Time.now)
    #returns true if the location is open, false if not

    self.hours.reduce(nil) do |found, hour|
      if hour.span.cover?(time) || found
        found = true
      end
    end

  end
end
