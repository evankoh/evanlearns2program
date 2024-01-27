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
        ran_quips=(Death.quips[randint(0,len(self.quips)-1)])
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
            
class LaserWeaponArmory(Scene):
    
    def enter(self):
        print('''You do a dive roll into the Weapon Armory, crouch and scan the room
for more Gothons that might be hiding. It's dead quiet, too quiet.
You stand up and run to the far side of the room and find the 
neutron bomb in its container. There's a keypad lock on the box
and you need the code to get the bomb out. If you get the code
wrong 10 times then the lock closes forever and you can't
get the bomb. The code is 3 digits.''')
        code=(f"{randint(1,9)}{randint(1,9)}{randint(1,9)}")
        guess=input('''
[keypad]>
''')
        guesses=1
        
        while guess!=code and guesses < 10:
            print("BZZZEDDD!")
            guesses+=1
            guess=input('''
[keypad]>
''')
            
        if guess==code:
            print('''The container clicks open and the seal breaks, letting gas out.
You grab the neutron bomb and run as fast as you can to the
bridge where you must place it in the right spot.''')
            return 'the_bridge'
        
        else:
            print('''The lock buzzes one last time and then you hear a sickening
melting sound as the mechanism is fused together.
You decide to sit there, and finally the Gothons blow up the
ship from their ship and you die.''')
            return 'death'

class TheBridge(Scene):
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

class EscapePod(Scene):
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