def spoonerize(words):
    a,b=words.split()
    newwords=''.join(b[0]+a[1:]+' '+a[0]+b[1:])
    return newwords