# https://www.codewars.com/kata/570cbe88f616a8f4f50011ac

def short_form(s):
    vowels='aeiouAEIOU'
    lst_s=[]
    lst_new_s=[]
    counter=0
    for i in s:
        lst_s.append(i)
    for i in lst_s:
        if counter==0 or counter==(len(s)-1):
            lst_new_s.append(i)
            counter+=1
        elif i not in vowels:
            lst_new_s.append(i)
            counter+=1
        elif i in vowels:
            counter+=1
    new_s=''.join(lst_new_s)
    return new_s