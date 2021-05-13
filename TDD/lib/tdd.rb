
class Array
    def my_uniq
        arr = []
        self.each do |el|
            arr << el if !arr.include?(el)
        end
        arr
    end

    def two_sum
        
    end
end