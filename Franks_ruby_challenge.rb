





nums = [*1..10]


def isOdd(num)
  num.odd?
end




def count_odd_nums(arrNums)
  new_array = []
  arrNums.each do |each_num|
    if isOdd(each_num)
      new_array << each_num
    end
     
  end
  p new_array
end

count_odd_nums(nums)
