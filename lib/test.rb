class Array
    def my_uniq
        result = []
        
        self.each do |ele|
            result << ele unless result.include?(ele)
        end
        result
    end
    
    
    def two_sum
        result = []

        self.each_with_index do |ele1,i1|
            self.each_with_index do |ele2,i2|
                result << [i1,i2] if (ele1 + ele2) == 0 && !result.include?([i1,i2].sort) && i1 != i2
            end
        end
        result
    end

end

def my_transpose(arr)
    result = []

    (0...arr.length).each do |idx1|
        sub_arr = []
        (0...arr.length).each do |idx2|
            sub_arr << arr[idx2][idx1] 
        end
        result << sub_arr
    end
    result
end

def stock_picker(arr)
    return [nil, nil] if arr.empty?
    buy_day = arr.index(arr.sort[0])
    sell_day = arr.index(arr[buy_day+1..-1].sort[-1])
    return [buy_day, sell_day] unless (buy_day.nil? || sell_day.nil?)
    [nil, nil]
end

# def towers_of_hanoi
    
    


# end

