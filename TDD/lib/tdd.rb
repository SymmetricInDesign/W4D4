
class Array
    def my_uniq
        arr = []
        self.each do |el|
            arr << el if !arr.include?(el)
        end
        arr
    end

    def two_sum
        arr = []

        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                next if idx1 == idx2

                arr << [idx1, idx2] if ele1 + ele2 == 0 && idx1 < idx2
            end
        end

        arr
    end

    
end

def my_transpose(grid)
    raise ArgumentError unless grid.is_a?(Array)
    raise ArgumentError unless grid.all? {|el| el.is_a?(Array)}
    transpose = grid.dup
    (0...grid.length).each do |x|
        (0...grid.length).each do |y|
            transpose[y][x] = grid[x][y]
        end
    end
    transpose
end

