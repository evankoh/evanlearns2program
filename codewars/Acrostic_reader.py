def read_out(acrostic):
    lst=[]
    for i in acrostic:
        lst.append(i[:1])
    hidden_word=''.join(lst)
    return hidden_word