def find_smallest(numbers, to_return):
    num_value=0
    num_index=0
    counter=0
    num_return=0
    for i in numbers:
        if counter==0:
            num_value=i
        if i<num_value:
            num_value=i
            num_index=counter
        counter+=1
    if to_return == 'value':
        num_return=num_value
    elif to_return == 'index':
        num_return=num_index
    return num_return