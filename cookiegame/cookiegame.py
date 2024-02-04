from sys import exit
from random import randint

class Scene(object):
    def enter(self):
        print("This scene is not yet configured. Subclass it and implement enter().")
        exit(1)

class Engine(object):
    def __init__(self,scene_map):
        self.scene_map = scene_map
    
    def play(self):
        current_scene = self.scene_map.opening_scene()
        while True:
            next_scene_name = current_scene.enter()
            current_scene = self.scene_map.next_scene(next_scene_name)

class Bad_End(Scene):
    quips = [
        "You failed to reach the cookie jar, better luck next time!",
        "You can do it, try again!",
        "Don't worry if you failed the first time, try again!",
        "Heal up that booboo and try again, you can do it!"
    ]
    
    def enter(self):
        ran_quips=(Bad_End.quips[randint(0,len(self.quips)-1)])
        print(f'''{ran_quips}
    
  _______   _____   __     __               _____              _____   _   _    _ 
 |__   __| |  __ \  \ \   / /      /\      / ____|     /\     |_   _| | \ | |  | |
    | |    | |__) |  \ \_/ /      /  \    | |  __     /  \      | |   |  \| |  | |
    | |    |  _  /    \   /      / /\ \   | | |_ |   / /\ \     | |   | . ` |  | |
    | |    | | \ \     | |      / ____ \  | |__| |  / ____ \   _| |_  | |\  |  |_|
    |_|    |_|  \_\    |_|     /_/    \_\  \_____| /_/    \_\ |_____| |_| \_|  (_)

''')
        exit(1)

class Good_End(Scene):
    def enter(self):
        print('''
You managed to reach the cookie jar! Congratulations! Yummy yummy cookies!

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠾⠛⠛⠳⢶⣤⣤⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣶⠟⠁⢀⣴⡶⢶⣦⠀⠈⠉⠀⠀⠉⠙⠻⢷⣦⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡟⠉⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⢭⣝⣛⠿⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠾⢛⡽⠁⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⢦⣹⣷⣄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣠⡾⢋⣴⠾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⢀⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢰⠟⣱⡟⠁⠀⠀⠀⢀⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡟⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣦⡀⠀⠀
⠀⠀⠀⠀⣠⠋⣴⠟⠀⠀⠀⠀⠀⢸⣿⣿⣧⡉⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣦⣿⡄⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⢠⡙⣷⡄⠀
⠀⠀⢀⣼⣣⠞⠁⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣷⣿⠇⠀⠀⠀⠀⠀⠀⠀⠸⠟⠛⠻⠿⠃⠀⠀⢠⣾⣿⣿⣿⣶⡄⠀⠀⠀⢳⢸⣿⠀
⠀⢠⣾⢡⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠟⠟⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣧⣼⡟⠀⠀⠀⣸⢻⣿⠀
⠀⣾⠇⠀⢀⢀⣠⡶⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⡿⠟⠁⠀⠀⠀⣿⡸⣿⡀
⠀⣿⠀⠀⠸⣿⣿⣇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⣦⡄⠀⠀⠀⠀⠀⠀⠀⠈⠳⢿⣧
⠀⡏⠀⠀⠀⠘⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣾⣿⣿⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⢳⠀⠀⠀⠀⢀⣶⡄⢦⠈⣿
⣸⣱⠁⠀⠀⠀⠈⠁⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣌⣷⠀⠀⠀⠀⠀⠀⠀⠀⢿⣘⣿⣿⣿⣟⠞⠀⠀⢀⣴⣿⣿⡇⢸⠀⣾
⣿⣿⡀⠀⠀⠀⠀⠀⢀⣼⣿⣿⠻⣷⡀⠀⠀⠀⠘⣿⣿⣿⣿⣿⠟⡆⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠉⠁⠀⠀⠀⠀⠚⢷⣾⣿⡇⣸⣴⡟
⢹⣿⣧⡀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠈⠙⠛⢿⠽⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⣡⣿⡟⠀
⠀⢻⣝⣻⣶⣖⣶⣶⣤⣙⣿⣿⠿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⢡⣿⠃⠀
⠀⠀⠻⡿⢟⠛⢿⡿⠛⢻⣿⠿⣷⣶⣄⠀⠀⠀⢀⣤⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣀⠀⠀⠀⠀⠀⠀⣴⣿⢃⣿⡿⠀⠀
⠀⠀⠀⠀⣹⠷⠈⠀⠸⠟⠀⠀⠙⠛⢻⣿⠂⢰⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡝⣷⠀⠀⠀⣠⣞⣽⡟⣸⡿⠀⠀⠀
⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣷⢸⣿⣿⣿⣟⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⠀⠀⣠⣿⡿⢋⣴⡿⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣯⡀⠻⢿⡿⠏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠯⠟⠋⠀⣰⡿⣫⣾⡿⠋⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣇⢻⣿⠀⠀⠀⠀⠀⢀⣤⡤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⢣⡿⠛⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢿⣧⢄⣀⡀⢀⣀⣿⣿⣷⣾⣿⡄⢀⣤⣤⣾⣿⠿⠛⠛⣛⣉⣵⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢻⣿⣿⡶⠶⠭⣿⣿⣿⣿⠟⡠⢛⣽⣟⣤⣶⣿⣿⣿⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⠻⢷⣾⣿⣿⣿⣶⣶⣶⣾⣿⠟⠛⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
''')
        exit(1)

class Decide_Idea(Scene):
    def enter(self):
        print('''
                 _    _          _            
                | |  (_)        (_)           
  ___ ___   ___ | | ___  ___     _  __ _ _ __ 
 / __/ _ \ / _ \| |/ / |/ _ \   | |/ _` | '__|
| (_| (_) | (_) |   <| |  __/   | | (_| | |   
 \___\___/ \___/|_|\_\_|\___|   | |\__,_|_|   
                               _/ |           
                              |__/   
                              
You're a kid attempting to get a cookie jar from the kitchen cabinet,
but you're not tall enough to reach for it. Find ways to get it!         


''')
        action=input('(1)Chair      (2)Books        (3)Swing\n')
        if action=='1' or action=='Chair' or action=='chair':
            if chairpushed==True:
                print('''
Chair has already been pushed to the cabinet,
let's try another idea!''')
                return 'decide_idea'
            else:
                return 'chair'
            
        elif action=='2' or action=='Books' or action=='books':
            print(booksstacked)
            if booksstacked==True:
                print('''
Books have already been stacked,
let's try another idea!''')
                return 'decide_idea'
            else:
                return 'books'
        
        elif action=='3' or action=='Swing' or action=='swing':
            return 'swing'
        
        else:
            print('''
That's neither of the options, try again!''')
            return 'decide_idea'
            
class Books(Scene):
    def enter(self):
        global booksstacked
        print('''
Books?
What can we do with books to get to the cookie jar?
Hmm... I know! We can stack them! We have books all around the house! 
But how many books do we need to stack in order to reach the cookie jar?
''')
        guess=int(input())
        guesses=1
        while guess<=20 or guess>50 and guesses < 10:
            if guess<=20:
                print('''
That's too little books! Try again!
How many books should we stack?''')
                guesses+=1
                guess=int(input())
            elif guess>50:
                print('''
We don't have that many books in our house! Try again!
How many books should we stack?''')
                guesses+=1
                guess=int(input())
        
        if guesses==10:
            print('''
You're making too much of a ruckus shifting books and counting!
Your mum finds you and sees what you have been up to! No cookies for you.
Try again next time!''')
            return 'bad_end'
            
        elif 20<guess<=50:
            if chairpushed==True:
                booksstacked=True
                return 'chair_books'
            else:
                return 'books_correct'
                
class Books_Correct(Scene):
    def enter(self):
        global booksstacked
        print('''
That's it! We got the right number of books. Well done!
You stack the books up and there we have it, a way to the cookies!
You make your way to the top of the books but it seems the books
aren't tall enough for you to reach the cookie jar!

Aww man.

Hmm, do you think you should make a jump for it or get down and rethink?
The stack of books is wobbling around as you ponder, make a decision quick!
(1)Jump         (2)Get down''')
        jumpordown=input()
        if jumpordown=='1' or jumpordown=='Jump' or jumpordown=='jump':
            print('''
You take a leap of faith and make a jump for the cookie jar!
Almost there, we can reach it, stretch up high and grab it!!
Oh no, you start to fall before you reach the cookies.
The stack of books start to fall off one by one.
Before you know it, your face lands right smack on the kitchen floor.
You start crying, your mum rushes in to see the mess of books and
your tearing face.
''')
            return 'bad_end'
        elif jumpordown=='2' or jumpordown=='Get down' or jumpordown=='get down':
            print('''
Good on you, safety first!
Since you have already stacked the books,
perhaps you can try stacking the books on something else
to reach the cookie jar?
''')
            booksstacked=True
            return 'decide_idea'
        else:
            print('''
That's neither of the options, try again!''')
            return 'books_correct'

class Chair_Books(Scene):
    def enter(self):
        print('''
Hey look! You have both a stack of books and a chair near the cabinet!
Eureka! How about we try stacking the books onto the chair?
That way, it'll be tall enough for you to reach the cookie jar!

.

..

...

Okay, the books are stacked onto the chair, great job!
Looking at the tower of books on the chair, it does look kind of scary..
Should we climb it or think of something else?

(1)Climb        (2)Don't climb''')
        action=input()
        if action=='1' or action=='Climb' or action=='climb':
            print('''
You decide to climb the books and the chair!
As you climb, the books start to lose balance and give way.
The books begin to fall and the next thing you know,
you're back on the ground again and crying your eyes out.
''')
            return 'bad_end'
        elif action=='2' or action=="don't climb" or action=="Don't climb":
            print('''
It's too scary to climb!
You decide not to climb it, take a step back.
Maybe there's another way to get on top of the stack of books and chair?
''')
            return 'decide_idea'

class Chair(Scene):
    def enter(self):
        print('''
Chair?
It's a little far for the cabinet. Hmm... what can you do with it?
Well, we can try climbing onto the chair or maybe pushing it closer to the cabinet?
''')

        action=input('(1)Climb chair        (2)Push chair\n')
        
        if action=='1' or action=='Climb chair' or action=='Climb chair':
            print('''
You climb the chair, it's kind of high isn't it?
The cabinet is quite a distance away, hmm...
We could make a jump for it, or get down and perhaps push the chair over to the cabinet?
''')
            jumporpush=input('(1)Jump       (2)Get down\n')
            if jumporpush=='1' or jumporpush=='Jump' or jumporpush=='jump':
                print('''
You decide to jump from the chair towards the cabinet!
The cookie jar is getting closer and closer, but you start to fall-
SPLAT! You land face flat onto the kitchen floor.
''')
                return 'bad_end'
            elif jumporpush=='2' or jumporpush=='Get down' or jumporpush=='get down':
                print('''
Wise choice! You got down from the chair and slowly push it
over to the cabinet.''')
                return 'chair_push'
        
        elif action=='2' or action=='Push chair' or action=='push chair':
            return 'chair_push'

        else:
            print("That's not one of the choices!")
            return 'chair'

class Chair_Push(Scene):
    def enter(self):
        global chairpushed
        chairpushed=True
        if booksstacked==True:
            return 'chair_books'
        else:
            print('''
You have pushed the chair to the cabinet!
Hmm... the chair seems to be too short for you to reach the cookie jar.
Maybe you can try stacking something else on the chair?
''')
            return 'decide_idea'

class Swing(Scene):
    def enter(self):
        print('''You rush through the ship desperately trying to make it to
the escape pod before the whole ship explodes. It seems like
hardly any Gothons are on the ship, so your run is clear of
interference. You get to the chamber with the escape pods, and
now need to pick one to take. Some of them could be damaged
but you don't have time to look. There's 5 pods, which one
do you take?''')
        
        good_pod=randint(1,5)
        guess=input('''
[pod #]> 
''')
        
        if int(guess) != good_pod:
            print(f'''You jump into pod {guess} and hit the eject button.
The pod escapes out into the void of space, then
implodes as the hull ruptures, crushing your body
into jam jelly.''')
            return 'death'
        
        else:
            print(f'''You jump into pod {guess} and hit the eject button.
The pod easily slides out into space heading to
the planet below. As it flies to the planet, you look
back and see your ship implode then explode like a 
bright star, taking out the Gothon ship at the same
time. You won!''')
            
            
            return 'finished'

class Map(object):
    scenes = {
        'decide_idea':Decide_Idea(),
        'chair':Chair(),
        'books':Books(),
        'books_correct':Books_Correct(),
        'chair_push':Chair_Push(),
        'chair_books':Chair_Books(),
        'swing':Swing(),
        'good_end':Good_End(),
        'bad_end':Bad_End()
        }
    
    def __init__(self, start_scene):
        self.start_scene = start_scene
    
    def next_scene(self,scene_name):
        return Map.scenes.get(scene_name)
    
    def opening_scene(self):
        return self.next_scene(self.start_scene)

chairpushed=False
booksstacked=False
a_map = Map('decide_idea')
a_game=Engine(a_map)
a_game.play()