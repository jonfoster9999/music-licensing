def move_and_return_moves(s, e) 
  num1 = s[0] > e[0] ? s[0] - e[0] : e[0] - s[0]
  num2 = s[1] > e[1] ? s[1] - e[1] : e[1] - s[1]
  num1 + num2
end

def CharlietheDog(strArr)
    lengths = []
    info = {:food_locations => []}
    arr = strArr.collect { |str| str.split("") }.flatten
    grid = [
        [0, 0], [0, 1], [0, 2], [0, 3],
        [1, 0], [1, 1], [1, 2], [1, 3],
        [2, 0], [2, 1], [2, 2], [2, 3],
        [3, 0], [3, 1], [3, 2], [3, 3]
    ]
    arr.each_with_index do |letter, i|
        if letter == "F"
            info[:food_locations] << grid[i]
        elsif letter == "H"
            info[:home] = grid[i]
        elsif letter == "C"
            info[:charlie] = grid[i]
        end
    end 
    poss = info[:food_locations].permutation(info[:food_locations].length)
    poss.each_with_index do |seq, i|
        length = 0
        seq.unshift(info[:charlie]).push(info[:home])
        0.upto(seq.length - 2) do |i|
            length += move_and_return_moves(seq[i], seq[i+1])
        end
        lengths << length
    end
    lengths.min
end
   
# keep this function call here    
puts CharlietheDog(STDIN.gets)