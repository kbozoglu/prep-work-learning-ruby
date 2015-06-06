def nearest_larger(arr, idx)
    
    left = idx - 1
    right = idx + 1
    
    while left >= 0 || right <= arr.length - 1
        
        if left >= 0 && arr[left] > arr[idx]
            return left
        elsif right <= arr.length - 1 && arr[right] > arr[idx]
            return right
        end
        
        left -= 1
        right += 1
    end
    
    return nil
end

p nearest_larger([2,3,4,8], 2)
p nearest_larger([2,8,4,3], 2)
p nearest_larger([2,6,4,8], 2)
p nearest_larger([2,6,4,6], 2)
p nearest_larger([8,2,4,3], 2)
p nearest_larger([2,4,3,8], 1)
p nearest_larger([2, 6, 4, 8], 3)
p nearest_larger([2, 6, 9, 4, 8], 3)