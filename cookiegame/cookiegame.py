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
        print('''
Books?
What can we do with books to get to the cookie jar?
Hmm... I know! We can stack them! We have books all around the house! 
But how many books do we need to stack in order to reach the cookie jar?
''')
        numbooks=range(20,51)
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
                return 'chair_books'
            else:
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

#class Chair_Books(Scene):
#    def enter(self):
        

class Chair(Scene):
    def enter(self):
        print('''You burst into the Bridge with the neutron destruct bomb
under your arm and surprise 5 Gothons who are trying to 
take control of the ship. Each of them has an even uglier
clown costume than the last. They haven't pulled their 
weapons out yet, as they see the active bomb under your 
arm and don't want to set it off.''')
        
        action=input('''
throw the bomb, slowly place the bomb
''')
        
        if action=="throw the bomb":
            print('''In a panic you throw the bomb at the group of Gothons 
and make a leap for the door. Right as you drop it a 
Gothon shoots you right in the back killing you.
As you die you see another Gothon frantically try to disarm
the bomb. You die knowing they will probably blow up when 
it goes off.''')
            return 'death'
        
        elif action=="slowly place the bomb":
            print('''You point your blaster at the bomb under your arm
and the Gothons put their hands up and start to sweat.
You inch backward to the door, open it, and then carefully
place the bomb on the floor, pointing your blaster at it.
You then jump back through the door, punch the close button
and black the lock so the Gothons can't get out.
Now that the bomb is placed you run to the escape pad to 
get off this tin can.''')
            return 'escape_pod'
        
        else:
            print("DOES NOT COMPUTE!")
            return 'the_bridge'

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
#        'chair_books':Chair_Books(),
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