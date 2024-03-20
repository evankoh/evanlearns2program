#Our football team has finished the championship.
#Our team's match results are recorded in a collection of strings. 
#Each match is represented by a string in the format "x:y", where x is our team's score and y is our opponents score.
#For example: ["3:1", "2:2", "0:1", ...]
#Points are awarded for each match as follows:
#if x > y: 3 points (win)
#if x < y: 0 points (loss)
#if x = y: 1 point (tie)
#We need to write a function that takes this collection and returns the number of points our team (x) got in the championship by the rules given above.
#Notes:
#our team always plays 10 matches in the championship
#0 <= x <= 4
#0 <= y <= 4

##########################################################################################################

# allow user to input results of matches, up to 10 matches
# both teams: 0<=points<=4
# store each result as an item in a new list
# function to run through every item in the list
#1. use for loop to run through list
#2. each item, split and store into another list (first item = our team match points, third item = opponent team match points)
#3. use new list to compare match points, add point(s) into new variable
#4. create variables with booleans for teams' integrity (==True)
#5. if find fraud in points (points>=5) in either team's points, change variables to False for that team
#6. return: (1) variable value    (2) our team integrity    (3)opponent team integrity

def points(games):
    team_points=0
    our_integrity=True
    their_integrity=True
    for i in games:
        lst=list(i)
        if int(lst[0])>4:
            our_integrity=False
        if int(lst[2])>4:
            their_integrity=False
        if lst[0]>lst[2]:
            team_points+=3
        elif lst[0]<lst[2]:
            team_points+=0
        elif lst[0]==lst[2]:
            team_points+=1
    return team_points,our_integrity,their_integrity

total_results=[]

while True:
    if len(total_results)<10:
        match_results=input("Please input match results: ")
        total_results.append(match_results)
        print(len(total_results))
        more_results=input("Enter another match result?(y/n) ")
        if more_results=="y":
            continue
        elif more_results=="n":
            break
        else:
            print("Invalid input.")
    elif len(total_results)>=10:
        print("Reached maximum number of matches in the championship. Proceeding to calculate results...")
        break
    else:
        break

final_points,our_integrity,their_integrity=points(total_results)

if our_integrity==True and their_integrity==True:
    print(f'''No fraud found.
Our team's championship results is {final_points}!''')
elif our_integrity==False and their_integrity==True:
    print("Our team cheated and got disqualified.")
elif our_integrity==True and their_integrity==False:
    print("Their team cheated and got disqualified.")
elif our_integrity==False and their_integrity==False:
    print("Both teams cheated and got disqualified.")