 def stock_picker(a)
   x, y, max_num = -1, -1, -1
   a.each_with_index do |val, i|
     if val == a.last
       next
     end
     m = a[i+1..-1].max
     if m - val > max_num
       max_num = m
       x, y = i, a.index(m)
     end
   end
   return [x, y]
 end

 p stock_picker([17,3,6,9,15,8,6,1,10])
