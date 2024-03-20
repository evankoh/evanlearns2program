def leader_b(user, user_score, your_score):
    score_diff=user_score-your_score
    if score_diff<0:
        endpoint="Winning!"
    elif score_diff==0:
        endpoint="Only need one!"
    else:
        y=score_diff%3
        totalx=score_diff-y
        x=int(totalx/3)
        if x>1000:
            endpoint=f"To beat {user}'s score, I must complete {x} Beta kata and {y} 8kyu kata. Dammit!"
        else:
            endpoint=f"To beat {user}'s score, I must complete {x} Beta kata and {y} 8kyu kata."
    return endpoint