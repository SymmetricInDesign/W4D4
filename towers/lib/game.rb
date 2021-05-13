require_relative "towers"

class Game
    def initialize
      @towers = Towers.new
    end

    def play
    end

    def play_turn
      display
    end

    # private 
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