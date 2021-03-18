class Array

    def my_uniq
        arr = []
        self.each do |ele|
            if !arr.include?(ele)
                arr << ele
            end
        end
        arr
    end

    def two_sum
        pairs = []
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1 && ele1 + ele2 == 0
                    pairs << [idx1, idx2]
                end
            end
        end
        pairs
    end
    
end