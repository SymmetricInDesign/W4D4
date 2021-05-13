class Towers
    attr_reader :rods
    def initialize
        @rods = [[4,3,2,1],[],[]]
    end

    def move_disc(start_pos, end_pos)
        raise NoDiscError if @rods[start_pos].empty?
        if valid_destination?(@rods[start_pos].last, end_pos)
            disc = @rods[start_pos].pop
            end_pos.push(disc) 
        else
            raise InvalidDestinationError
        end
    end


    private

    def valid_destination?(disc, pos)
        @rods[pos].empty? || disc < @rods[pos].last 
    end

end

class NoDiscError < StandardError

end

class InvalidDestinationError < StandardError

end