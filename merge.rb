arr = [4,3,2,1]

def swap(a,b)
    
end

def merge_sort(arr)
    len = arr.length
    p arr
    if len == 1
        return arr
    elsif len == 2
        if arr[0] > arr[1]
            swap(arr[0], arr[1])
            temp = arr[0]
            arr[0] = arr[1] 
            arr[1] = temp
        end
    else
        arr1 = merge_sort(arr[0,len/2])
        arr2 = merge_sort(arr[len/2,len])
        sub = []
        until arr1.empty? or arr2.empty?
            if arr1[0] > arr2[0]
                sub << arr2.shift
            else
                sub << arr1.shift
            end
        end
        arr = sub + arr1 + arr2
    end
    arr
end

p merge_sort([0,9,8,7,6,5,4,3,2,1])
