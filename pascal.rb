def pascal(n)
  seed = [1]
  if n == 1
    seed.inspect
  else
    row_array = seed
    (n - 1).times do
      row_array.unshift 0
      row_array.push 0
      i = 0
      next_row = []
      while i < row_array.length - 1
        next_row << row_array[i] + row_array[i + 1]
        i += 1
      end
      row_array = next_row
    end
    row_array.inspect
  end
end

n = ARGV[0].to_i

puts pascal(n)