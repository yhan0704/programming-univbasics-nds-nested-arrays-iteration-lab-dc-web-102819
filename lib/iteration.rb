def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair.
  
  
  row_index = 0
  new_array=[]
  while row_index < src.count do 
    element_index = 0
    while element_index < src[row_index].count do
      element1 = src[row_index][element_index]
      element2 = src[row_index][element_index+1]
      new_array << "I love #{element1} and #{element2} on my pizza"
      element_index+=2
    end
    row_index +=1
  end
  new_array
end


def find_greater_pair(src)
  row_index = 0
    out_array=[]
  while row_index < src.count do 
    element_index = 0
    in_array=[]
    while element_index < src[row_index].count do
      element1 = src[row_index][element_index]
      element2 = src[row_index][element_index+1]
      if element1 <= element2
      out_array << element2
      elsif element1 >= element2
      out_array << element1  
      end
      element_index+=2
    end
    row_index +=1
  end
    out_array
end


def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  row_index = 0
  sum=0
  while row_index < src.count do 
    element_index = 0
    while element_index < src[row_index].count do
      element1 = src[row_index][element_index]
      element2 = src[row_index][element_index+1]
      if (element1 % 2 == 0) && (element2 % 2 == 0)
      sum += element1+element2
      end
      element_index+=2
    end
    row_index +=1
  end
    sum
end

