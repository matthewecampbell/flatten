require 'pry'
c = ([[1,2],[3,[4,5]]])

def flatten(array)
    flattened_array = []
    array.each do |item|
      if array?(item)
        flattened_array += flatten(item)
      else
        flattened_array << item
      end
    end
    flattened_array
  end

def array?(items)
  items.is_a?(Array)
end

p flatten(c)
