#lst=['apple','orange','pear']
#string=' '.join(lst)
#print(string)

my_list = [1, 2, 3, 4, 5]

# Slicing with start, stop, and step
subset = my_list[1:4]  # Elements from index 1 to 3: [2, 3, 4]
subset_with_step = my_list[::2]  # Every second element: [1, 3, 5]

# Omitting start or stop
start_omitted = my_list[:3]  # Elements from the beginning up to index 2: [1, 2, 3]
stop_omitted = my_list[2:]   # Elements from index 2 to the end: [3, 4, 5]

# Using negative indices
negative_index = my_list[-2:]  # Elements from the second-to-last to the end: [4, 5]

print(subset)
print(subset_with_step)
print(start_omitted)
print(stop_omitted)
print(negative_index)
