# https://www.codewars.com/kata/55e6125ad777b540d9000042/train/python

def get_count(words=None):
    if isinstance(words,str):
        vowels='aeiouAEIOU'
        v_counter=0
        c_counter=0
        counter=0
        while counter<len(words):
            for i in words:
                if i in vowels:
                    v_counter+=1
                elif i.isalpha():
                    c_counter+=1
                counter+=1
        words_lst=['vowels','consonants']
        num_lst=[v_counter,c_counter]
        vc_dict=dict(zip(words_lst,num_lst))
        return vc_dict
    else:
        words_lst=['vowels','consonants']
        num_lst=[0,0]
        vc_dict=dict(zip(words_lst,num_lst))
        return vc_dict

get_count('Test')