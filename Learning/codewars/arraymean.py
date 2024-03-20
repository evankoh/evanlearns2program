def find_average(nums):
    num_nums=len(nums)
    total_nums=0
    for i in nums:
        total_nums+=i
    avg_nums=total_nums/num_nums
    return avg_nums