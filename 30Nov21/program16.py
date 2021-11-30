test_keys = ["ten", "twenty", "thirty"]
test_values = [10, 20, 30]

print ("Original key list is : " + str(test_keys))
print ("Original value list is : " + str(test_values))

res = {}
for key in test_keys:
	for value in test_values:
		res[key] = value
		test_values.remove(value)
		break


print ("Resultant dictionary is : " + str(res))
