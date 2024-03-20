#if R, start from right
#assign length of list to variable (can use later on)
#counter=-1
#for i in reversed(list):
#   compare i with list[len(list)+counter]
#   
#   counter-=1

#list=[5,19,20,5,45,95]

#for i,j in enumerate(reversed(list)):
#    print("hellO",i,j)
#    for k,l in enumerate(reversed(list)):
#        if k==i:
#            continue
#        print(k,l)
    #print(i,j)
    
#import codewars_test as test

#@test.describe("Sample tests")
#def sample_tests():
#    @test.it("Test 1")
#    def test_1():
#        test.assert_equals(flip('R', [3, 2, 1, 2]), [1, 2, 2, 3])
#    @test.it("Test 2")
#    def test_2():
#        test.assert_equals(flip('L', [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])

def flip(d, a):
    if d=='R':
        flipped=sorted(a)
    elif d=='L':
        flipped=sorted(a,reverse=True)
    return flipped

print(flip('L', [3, 2, 1, 2]))
