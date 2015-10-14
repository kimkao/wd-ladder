a = [1, 5, 5, -4, 2, -10]

# find if three numbers add up to 0
# if yes, return true; if not, return false
def threesome (input_array)
	arr = input_array
	len = arr.length
	if len >= 3 
		for i in 0..(len-3)
			for j in (i+1)..(len-2)
				for k in (j+1)..(len-1)
					sum = arr[i] + arr[j] + arr[k]
					if sum == 0
						puts true
						return
					end
				end
			end
		end
	end
	puts false
end

threesome(a)
