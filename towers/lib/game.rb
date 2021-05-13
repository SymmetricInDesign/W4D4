require_relative "towers"

class Game
    def initialize
      @towers = Towers.new
    end

    def play
        while !game_over?
            begin
                play_turn
            rescue InvalidDestinationError
                "invalid destination. try a different move"
                retry
            rescue NoDiscError
                "no disc at selected position. try a different move"
                retry
            end
        end
        puts "you win"
        display
    end

    def play_turn
        display
        start_pos, end_pos = get_input
        @towers.move_disc(start_pos, end_pos)
        system "clear"
    end

    def game_over?
        @towers.rods[0..-2].all? {|rod| rod.empty?}
    end

    

    def valid_input?(input)
        return false if input.length !=3
        return false if !input[1] == ","
        pos = input.split(",").map {|el| el.to_i if ("0".."2").to_a.include?(el)}
        pos.none? {|num| num.nil?}
    end

    private 
    def get_input
        begin
            puts "enter a starting position and end position separated by a comma e.g. '0,1'"
            input = gets.chomp
            raise InvalidInputError if !valid_input?(input)
            pos = input.split(",").map {|el| el.to_i}
        rescue InvalidInputError
            puts "invalid input."
            retry
        end
    end

    def display
      3.downto(0).each do |idx|
          output = ""

          @towers.rods.each do |rod|
            if !rod[idx].nil?
                output += rod[idx].to_s + " " 
            else
                output += "_ "
            end
          end

          puts output
      end
    end
end

class InvalidInputError < StandardError

end

game = Game.new
game.play