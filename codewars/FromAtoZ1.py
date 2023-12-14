def gimme_the_letters(sp):
    alphabet_lower='abcdefghijklmnopqrstuvwxyz'
    alphabet_upper='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    start_L=sp[0]
    end_L=sp[2]
    if start_L in alphabet_lower:
        start_counter=0
        minus_counter=0
        for i in alphabet_lower:
            if start_L==i:
                minus_counter-=1
            elif start_L!=i:
                start_counter+=1
                start_counter+=minus_counter
        end_counter=1
        minus_counter=0
        for i in alphabet_lower:
            if end_L==i:
                minus_counter-=1
            elif end_L!=i:
                end_counter+=1
                end_counter+=minus_counter
        if start_counter==end_counter:
            end_counter+=1
        return alphabet_lower[start_counter:end_counter]
    elif start_L in alphabet_upper:
        start_counter=0
        minus_counter=0
        for i in alphabet_upper:
            if start_L==i:
                minus_counter-=1
            elif start_L!=i:
                start_counter+=1
                start_counter+=minus_counter
        end_counter=1
        minus_counter=0
        for i in alphabet_upper:
            if end_L==i:
                minus_counter-=1
            elif end_L!=i:
                end_counter+=1
                end_counter+=minus_counter
        if start_counter==end_counter:
            end_counter+=1
        return alphabet_upper[start_counter:end_counter]