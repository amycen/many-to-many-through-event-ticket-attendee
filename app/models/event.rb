require 'pry'
class Event
    attr_accessor :name, :total_cost, :ticket_price, :venue

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(name, total_cost, ticket_price)
        @name = name
        @total_cost = total_cost
        @ticket_price = ticket_price
        @@all << self
    end

    def sell_to_break_even
        tickets.count * ticket_price >= total_cost ? 0 : total_cost / ticket_price - tickets.count
    end

    def tickets
        Ticket.all.select do |tix| 
            tix.event == self
        end 
    end

    def attendees
        tickets.map do |tix| 
            tix.attendee 
           # binding.pry
        end
    end

    def average_age
        total = attendees.inject(0) do |sum, attendee| 
            sum + attendee.age
#            binding.pry
        end
        total / attendees.size
 #       binding.pry
    end
end

# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
