require 'pry'

class Attendee
    attr_accessor :name, :age

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def tickets
        Ticket.all.select do |tix| 
            tix.attendee == self 
           # binding.pry
        end
    end

    def events
        tickets.map {|tix| tix.event }
    end

    def money_spent
        events.inject(0) do |sum, event| 
            sum + event.ticket_price
        end
    end
end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events