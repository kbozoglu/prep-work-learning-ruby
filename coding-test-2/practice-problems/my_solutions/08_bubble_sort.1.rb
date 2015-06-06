def bubble_sort(arr)
    n = arr.length
    
    while true
        swap = false
        i = 0
        while i < n - 1
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swap = true
            end
            i += 1
        end
        n -= 1
        
        return arr if swap == false
    end
end

p bubble_sort([5, 4, 3, 2, 1])
p  bubble_sort([1])
p bubble_sort([])