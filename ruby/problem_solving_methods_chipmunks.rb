=begin

Pablo Hernandez 

Doing a solo pair since I could not find
one and I was allowed to do pair challenges
alone for this week only
  
=end
arr = [42, 89, 23, 1]

def search_array(arr, x)
 count = 0
 arr.each do |num|
   if num == x
     return count
   end
   count += 1
 end
 nil
end
search_array(arr, 23)
# ________________________________________________

def fib(num)
  num.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end

check = 218922995834555169026

if fib(100).include? check
  puts true
else
  puts false
end

# _________________________________________________

#Compare current value to previous values that are already sorted. If current value is greater, leave value in place otherwise continue to move down the list until no longer greater.

def insertion_sort(array)  
array.each_with_index do |el,i|  
  j = i - 1  
  while j >= 0  
    break if array[j] <= el  
    array[j + 1] = array[j]  
    j -= 1  
  end  
  array[j + 1] = el  
end  
end 
insertion_sort([23,34,46,87,12,1,66])