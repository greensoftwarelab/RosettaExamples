def unique(array)
    pure = Array.new
    for i in array
        flag = false
        for j in pure
            flag = true if j==i
        end
        pure << i unless flag
    end
    return pure
end

print unique ["hi","hey","hello","hi","hey","heyo"]   # => ["hi", "hey", "hello", "heyo"]
print "\n"

