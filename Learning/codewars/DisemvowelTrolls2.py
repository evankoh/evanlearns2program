def disemvowel(string_):
    vowels='aeiouAEIOU'
    list_=list(string_)
    for i in vowels:
        for j in list_:
            if i==j:
                list_.remove(j)
    newstring_=''.join(list_)
    return newstring_