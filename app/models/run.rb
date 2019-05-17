require 'pry'
require './attendee.rb'
require './event.rb'
require './ticket.rb'


jon = Attendee.new("jon", 5)
sam = Attendee.new("sam", 11)

e1 = Event.new("e1",30000, 6)
e2 = Event.new("e2",1000, 5)

t1 = Ticket.new(jon, e1)
t2 = Ticket.new(sam, e1)
t3 = Ticket.new(sam, e2)


#puts sam.events
#puts sam.money_spent
puts e1.tickets
puts e1.average_age
#binding.pry
puts e1.sell_to_break_even