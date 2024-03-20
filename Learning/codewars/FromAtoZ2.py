def gimme_the_letters(sp):
    if sp[0].islower():
        alphabet='abcdefghijklmnopqrstuvwxyz'
    elif sp[0].isupper():
        alphabet='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    return alphabet[alphabet.index(sp[0]):(alphabet.index(sp[2])+1)]