def motif_locator(sequence, motif):
    if motif not in sequence:
        return []
    else:
        seq_lst=[]
        counter_index=0
        counter=0
        counter2=0
        for i in sequence:
            if i==motif[counter]:
                counter+=1
            elif i!=motif[counter] and counter>0:
                counter=0
            if i==motif[0] and i!=motif[counter-1]:
                counter=1
                print("restart")
            if counter==len(motif):
                seq_lst.append(counter_index-len(motif)+2)
                counter=0
                print("counter appended")
            if i==motif[counter] and counter>0:
                counter2+=1
            elif i!=motif[counter2] and counter2>0:
                counter2=0
            if i==motif[0] and i!=motif[counter2-1]:
                counter2=1
                print('restart2')
            if counter2==len(motif):
                seq_lst.append(counter_index-len(motif)+2)
                counter2=0
                print("counter2 appended")
            counter_index+=1
            print('counter index is ',counter_index)
            print('counter is ',counter)
            print('counter2 is ',counter2)
        print(seq_lst)
        return seq_lst


motif_locator("TTCCGGAACC", "CC")

# https://www.codewars.com/kata/5760c1c7f2717b91e20001a4/train/python