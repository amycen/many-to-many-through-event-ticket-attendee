class Ticket
    attr_accessor :attendee, :event, :venue
    @@all = []
    
    def self.all
        @@all
    end

    def initialize(attendee, event, venue)
        @attendee = attendee
        @event = event
        @venue = venue
        @@all << self
    end
end

# Ticket.all
    # Returns an array of all Ticket instances
