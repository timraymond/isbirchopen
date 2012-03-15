class Location < ActiveRecord::Base
  has_many :hours
  validates_presence_of :name

  def status(time = Time.now)
    #returns true if the location is open, false if not

    #if $redis.exists self.name
    #  closing = Time.parse($redis.get self.name)

    #  if time < closing
    #    return true
    #  else
        # Closing is stale
    #    $redis.del self.name
    #  end
    #end

      # Hit the database if cache is stale or the location was previously closed
    closing = self.hours.reduce(nil) do |found, hour|
      if hour.span.cover?(time) || found
        found = hour.span.last
      end
    end

    #$redis.set(self.name, closing) if closing #set the cache to the new closing time
    closing
  end
end
