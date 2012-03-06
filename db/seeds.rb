# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.delete_all
Hour.delete_all

# Res
hours = []
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 19, closed_minute: 30, day: "monday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 19, closed_minute: 30, day: "tuesday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 19, closed_minute: 30, day: "wednesday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 19, closed_minute: 30, day: "thursday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 19, closed_minute: 30, day: "friday")

### Weekend Hours
hours << Hour.create(open_hour: 9, open_minute: 0, closed_hour: 14, closed_minute: 0, day: "saturday")
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 19, closed_minute: 0, day: "saturday")

hours << Hour.create(open_hour: 9, open_minute: 0, closed_hour: 14, closed_minute: 0, day: "sunday")
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 19, closed_minute: 0, day: "sunday")
Location.create(name: "Res", hours: hours)

# Birch Grill
hours = []
hours << Hour.create(open_hour: 11, open_minute: 30, closed_hour: 24, closed_minute: 0, day: "monday")
hours << Hour.create(open_hour: 11, open_minute: 30, closed_hour: 24, closed_minute: 0, day: "tuesday")
hours << Hour.create(open_hour: 11, open_minute: 30, closed_hour: 24, closed_minute: 0, day: "wednesday")
hours << Hour.create(open_hour: 11, open_minute: 30, closed_hour: 27, closed_minute: 0, day: "thursday")
hours << Hour.create(open_hour: 11, open_minute: 30, closed_hour: 27, closed_minute: 0, day: "friday")
hours << Hour.create(open_hour: 18, open_minute: 0, closed_hour: 25, closed_minute: 0, day: "saturday")
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "sunday")
Location.create(name: "Birch", hours: hours)

# Maple Ridge
hours = []
hours << Hour.create(open_hour: 19, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "monday")
hours << Hour.create(open_hour: 19, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "tuesday")
hours << Hour.create(open_hour: 19, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "wednesday")
hours << Hour.create(open_hour: 19, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "thursday")
hours << Hour.create(open_hour: 19, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "sunday")
Location.create(name: "Maple Ridge", hours: hours)

# Scally Wagon
hours = []
hours << Hour.create(open_hour: 21, open_minute: 0, closed_hour: 26, closed_minute: 0, day: "thursday")
hours << Hour.create(open_hour: 21, open_minute: 0, closed_hour: 26, closed_minute: 0, day: "friday")
hours << Hour.create(open_hour: 21, open_minute: 0, closed_hour: 26, closed_minute: 0, day: "saturday")
hours << Hour.create(open_hour: 21, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "sunday")
Location.create(name: "Scally Wagon", hours: hours)

# Grill Nation
hours = []
hours << Hour.create(open_hour: 11, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "monday")
hours << Hour.create(open_hour: 11, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "tuesday")
hours << Hour.create(open_hour: 11, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "wednesday")
hours << Hour.create(open_hour: 11, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "thursday")
hours << Hour.create(open_hour: 11, open_minute: 0, closed_hour: 19, closed_minute: 30, day: "friday")
Location.create(name: "Grill Nation", hours:hours)

# Oak Glen
hours = []
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "monday")
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "tuesday")
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "wednesday")
hours << Hour.create(open_hour: 17, open_minute: 0, closed_hour: 24, closed_minute: 0, day: "thursday")
Location.create(name: "Oak Glen", hours: hours)

# Corsair Cafe
hours = []
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "monday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "tuesday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "wednesday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 20, closed_minute: 30, day: "thursday")
hours << Hour.create(open_hour: 7, open_minute: 0, closed_hour: 17, closed_minute: 0, day: "thursday")
Location.create(name: "Corsair Cafe", hours: hours)
