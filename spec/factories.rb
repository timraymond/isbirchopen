FactoryGirl.define do

  factory :hour do
    day "monday" 
    open_hour   9
    open_minute 0
    closed_hour 11
    closed_minute 0
    
    location {|l| l.association(:location)}
  end

  factory :location do
    name 'Birch'
  end
end
