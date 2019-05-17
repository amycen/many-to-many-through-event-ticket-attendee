class Venue

    attr_reader :name, :location, :rental_fee

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(name, location, rental_fee)
        @name  = name
        @location  = location
        @rental_fee = rental_fee
        @@all << self
    end

    def tickets
        Ticket.all.select { |tix| tix.venue == self }
    end

    def events
        tickets.map { |tix| tix.event }.uniq
    end

    def revenue
        @rental_fee
    end

    def attendees
        tickets.map { |tix| tix.attendee }.uniq
    end

    def self.guest_lists
        guest_list = []
        tickets.map do |tix|
            {
                name: tix.event,
                
            }
            guest_list << 
        
    end
    
end