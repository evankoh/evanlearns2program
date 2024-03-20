def leader_b(user, user_score, your_score):
    if user_score<your_score:
        return "Winning!"
    elif user_score==your_score:
        return "Only need one!"
    else:
        beta_kata,eight_kyu=divmod(user_score-your_score,3)
        endpoint=f"To beat {user}'s score, I must complete {beta_kata} Beta kata and {eight_kyu} 8kyu kata."
        if beta_kata+eight_kyu>=1000:
            return (endpoint + " Dammit!")
        else:
            return endpoint