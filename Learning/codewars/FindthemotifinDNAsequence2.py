def motif_locator(sequence, motif):
    if motif not in sequence:
        return []
    else:
        seq_lst=[]
        counter_index=0
        counter=0
        for i in sequence:
            if counter<=(len(sequence)-len(motif)+1):
                checker=sequence[counter:(counter+len(motif))]
                print(checker)
                if checker==motif:
                    seq_lst.append(counter+1)
            counter+=1
        print(seq_lst)
        return seq_lst

motif_locator("TTCCGGAACC", "CC")