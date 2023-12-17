https://www.codewars.com/kata/55e6125ad777b540d9000042/train/python

def get_count(words):
    vowels='aeiouAEIOU'
    v_counter=0
    c_counter=0
    counter=0
    while counter<=len(words):
        for i in words:
            if i in vowels:
                v_counter+=1
            elif i not in vowels and i != ' ':
                c_counter+=1
    #with the counters of vowel and consonants, need to convert them into a dictionary and return dictionary
    