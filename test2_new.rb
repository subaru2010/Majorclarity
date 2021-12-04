require './meetings_scheduler'

$stdout = File.new('console.out', 'w')
$stdout.sync = true

# assuming duration in hours
example_0 = [
  { name: 'Meeting 1', duration: 3, type: :onsite },
  { name: 'Meeting 2', duration: 2, type: :offsite },
  { name: 'Meeting 3', duration: 1, type: :offsite },
  { name: 'Meeting 4', duration: 0.5, type: :onsite }
]

example_1 = [
  { name: 'Meeting 1', duration: 1.5, type: :onsite },
  { name: 'Meeting 2', duration: 2, type: :offsite },
  { name: 'Meeting 3', duration: 1, type: :onsite },
  { name: 'Meeting 4', duration: 1, type: :offsite },
  { name: 'Meeting 5', duration: 1, type: :offsite },
]

example_2 = [
  { name: 'Meeting 1', duration: 4, type: :offsite },
  { name: 'Meeting 2', duration: 4, type: :offsite }
]

example_3 = [

  { name: 'Meeting 1', duration: 0.5, type: :offsite },
  { name: 'Meeting 2', duration: 0.5, type: :onsite },
  { name: 'Meeting 3', duration: 2.5, type: :offsite },
  { name: 'Meeting 4', duration: 3, type: :onsite }
]

example_4 = [
  { name: 'Meeting 1', duration: 3, type: :onsite },
  { name: 'Meeting 2', duration: 2, type: :offsite },
  { name: 'Meeting 3', duration: 2, type: :offsite },
  { name: 'Meeting 4', duration: 0.5, type: :onsite }
]

example_5 = [
  { name: 'Meeting 1', duration: 4, type: :offsite },
  { name: 'Meeting 2', duration: 4, type: :onsite },
]

example_6 = [
  { name: 'Meeting 1', duration: 4, type: :onsite },
  { name: 'Meeting 2', duration: 4, type: :onsite },
]

example_7 = [
  { name: 'Meeting 1', duration: 8, type: :offsite },
]

example_8 = [
  { name: 'Meeting 1', duration: 8.5, type: :onsite },
]


example_9= [
  { name: 'Meeting 1', duration: 8, type: :onsite },
]

example_10= [
  { name: 'Meeting 1', duration: 3.5, type: :offsite },
  { name: 'Meeting 1', duration: 4, type: :offsite },
]

# change the example below to test different datasets.
puts "\nTest Case0 running ..."
scheduler0 = MeetingsScheduler.new(example_0)
scheduler0.schedule

puts "\nTest Case1 running ..."
scheduler1 = MeetingsScheduler.new(example_1)
scheduler1.schedule

puts "\nTest Case2 running ..."
scheduler2 = MeetingsScheduler.new(example_2)
scheduler2.schedule

puts "\nTest Case3 running ..."
scheduler3 = MeetingsScheduler.new(example_3)
scheduler3.schedule

puts "\nTest Case4 running ..."
scheduler4 = MeetingsScheduler.new(example_4)
scheduler4.schedule

puts "\nTest Case5 running ..."
scheduler5 = MeetingsScheduler.new(example_5)
scheduler5.schedule

puts "\nTest Case6 running ..."
scheduler6 = MeetingsScheduler.new(example_6)
scheduler6.schedule

puts "\nTest Case7 running ..."
scheduler7 = MeetingsScheduler.new(example_7)
scheduler7.schedule

puts "\nTest Case8 running ..."
scheduler8 = MeetingsScheduler.new(example_8)
scheduler8.schedule

puts "\nTest Case9 running ..."
scheduler9 = MeetingsScheduler.new(example_9)
scheduler9.schedule

puts "\nTest Case10 running ..."
scheduler10 = MeetingsScheduler.new(example_10)
scheduler10.schedule
