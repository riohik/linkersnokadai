require 'csv'

csv_data = CSV.read('KEN_ALL.csv', headers: false)

p '文字を入力してください。'
input = gets.chomp
#入力した文字を一文字ずつ分割する
inputArray = input.split("")
inputArrayCount = inputArray.count
matchArray = []
count = 0;
File.open("result.txt",'w') do |file|
    csv_data.each do |str|
        matchCount = 0
        inputArray.each do |i|
            if str[6].include?(i) == true || str[7].include?(i) == true || str[8].include?(i) == true
                matchCount += 1
            end
        end
        if matchCount == inputArrayCount
            file.write(str)
            file.write("\n")
        end
    end
end
