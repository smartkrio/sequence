def sequence(start_num, depth)
    list = start_num.to_s.split('')
    count = 1
    result = ""
    
    list.each_with_index do |number, index|
        if list[index] == list[index+1]
            count += 1    
        else
            result << "#{count}#{number}"
            count = 1
        end
        puts number if list.count == 1
    end
    
    puts result
    return sequence(result, depth-1) until depth == 0
end

sequence(1,5)

