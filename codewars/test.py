str1='hello world'
for i in str1:
    print(i)

#lst=['V0','V12','V1','V2','V3','V11']
#newlst=[]

#for i in lst:
#    newi=list(i)
#    newi.remove(newi[0])
#    newi2=int(''.join(newi))
#    newlst.append(newi2)

#newlst2=sorted(newlst)
    

#print(newlst)

#newlst=sorted(lst)
#print(newlst)

#sp='a-z'
#start_L=sp[2]
#print(start_L)

#lst=['apple','orange','pear']
#string=' '.join(lst)
#print(string)

#my_list = [1, 2, 3, 4, 5]

# Slicing with start, stop, and step
#subset = my_list[1:4]  # Elements from index 1 to 3: [2, 3, 4]
#subset_with_step = my_list[::2]  # Every second element: [1, 3, 5]

# Omitting start or stop
#start_omitted = my_list[:3]  # Elements from the beginning up to index 2: [1, 2, 3]
#stop_omitted = my_list[2:]   # Elements from index 2 to the end: [3, 4, 5]

# Using negative indices
#negative_index = my_list[-2:]  # Elements from the second-to-last to the end: [4, 5]

#print(subset)
#print(subset_with_step)
#print(start_omitted)
#print(stop_omitted)
#print(negative_index)

#def scramble(strng, array):
#    newlst=[]
#    while len(newlst)<len(strng):
#        newlst.append(0)
#    print(newlst)
#    strnglst=list(strng)
#    counter=0
#    for i in range(len(array)):
#        newlst[array[counter]]=strnglst[counter]
#        counter+=1
#        print(newlst)
#    print(newlst)
#    newstrng=''.join(newlst)
#    print(newstrng)
#    return newstrng

#scramble('hello',[0,3,1,2,4])
#zipped=sorted(zip([0,3,1,2,4],'hello'))
#x=''.join(v for _, v in zipped)

#print(list(zipped))
#print(x)

#zippedlist=list(zip([4,2,1,3,0],"hello"))
#print(zippedlist)

#tuplelst = list(v for _,v in sorted([(4, 'h'), (2, 'e'), (1, 'l'), (3, 'l'), (0, 'o')]))
#print(tuplelst)