a = [5, -5, 7, 11, -2, 11, 10]

# create hash
# key is sum of 2 integers; value is those 2 integers
# loop through array to see if there's a negative complement of the key
def threesome_adv(input_array)
	arr = input_array
	len = arr.length
	sum_hash = Hash.new

	(0..len-1).each do |index1| # first for loop
		(index1+1..len-1).each do |index2| # second for loop
			sumTwoElem = arr[index1] + arr[index2] # sum of 2 array values will be key in hash
			if not sum_hash.keys.include?(sumTwoElem) # check for duplicates in hash keys
				sum_hash[sumTwoElem] = [] # create the key
			end
			sum_hash[sumTwoElem] << index1 # append index1
			sum_hash[sumTwoElem] << index2 # append index2
		end
	end

	(0..arr.length-1).each do |index|
		arr_val = arr[index]
		# first if: check if hash contains key that's negative complement of array value
		# second if: check if indices are the same to avoid double use of array value
		if sum_hash.keys.include?(-arr_val) and not sum_hash[-arr_val].include?(index)
			puts true
			return
		end
	end
	puts false
end

threesome_adv(a)