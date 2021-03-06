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
    
    def my_transpose
        return_arr = Array.new(self.length) { [] }
        range = (0...self.length)
        range.each do |idx1|
            range.each do |idx2|
                return_arr[idx1][idx2] = self[idx2][idx1]
            end
        end
        return_arr
    end


    def stock_picker
        pairs = Hash.new { |h,k| h[k] = []}
        self.each_with_index do |el1, idx1|
            self.each_with_index do |el2, idx2|
                if idx2 > idx1 && (el2 - el1) > 0
                    diff = el2 - el1
                    pairs[[idx1, idx2]] = diff
                end
            end
        end
        if pairs.empty? 
            return []
        else 
            pairs.key(pairs.values.max) #max_by{|k,v| v }
        end
    end
    
end

