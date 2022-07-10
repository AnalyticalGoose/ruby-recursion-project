def merge_sort(arr, x = y = z = 0)

l = arr.take arr.size/2
r = arr.drop arr.size/2

    if arr.length > 1
        merge_sort(l); merge_sort(r)

        while x < l.length && y < r.length
            if l[x] < r[y]
                arr[z] = l[x]
                x += 1
            else 
                arr[z] = r[y]
                y += 1
            end
            z += 1
        end
        
        while x < l.length
            arr[z] = l[x]
            x += 1; z += 1
        end

        while y < r.length
            arr[z] = r[y]
            y += 1; z += 1
        end
    return arr
    end
end 

arr = [2, 8, 3, 7, 4, 1, 6, 5]

p merge_sort(arr)