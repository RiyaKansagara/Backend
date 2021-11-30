test_dict = {"name": "Kelly", "age": 25, "salary": 8000, "city": "New york"}

print("The original dictionary : " + str(test_dict))

res = {key: test_dict[key] for key in test_dict.keys() & {'name', 'salary'}}

print("The filtered dictionary is : " + str(res))
