def get_required(player, enemy):
    playerpulls=0
    enemypulls=0
    userlst=[player,enemy]
    for i in userlst:
        for k in i:
            if i == userlst[0]:
                playerpulls+=k
            elif i == userlst[1]:
                enemypulls+=k
    print(playerpulls)
    print(enemypulls)
    if playerpulls+6 