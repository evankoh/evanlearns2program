#Design my own game, to run within command prompt
#A short decision novel-based game for users to enjoy

#Objective of game: You're a kid attempting to get a cookie jar from the kitchen
#cabinet but you're not tall enough to reach for it. Find ways to get it!

################################################################################################

from sys import exit

def start():
    #recount objective to player
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
    #prompt player to choose between 3 objects to use to get to the cookie jar
    objects()

def objects():
    #(1)Chair   (2)Stool    (3)Books
    choice=input('''
Let's choose between these 3 objects to help us get to the cookie jar!
(1)chair    (2)stool    (3)books
''')
    #(1)Chair
        #call chair()
    if choice=="chair" or choice=="1":
        chair()
    #(2)Stool
        #call stool()
    elif choice=="stool" or choice =="2":
        stool()
    #(3)Books
        #call books()
    elif choice=="books" or choice=="3":
        books()
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        objects()

################################################################################################

def chair():
    #Player chooses the chair, decide what to do
    #(1)Climb onto the chair    (2)Push chair to cabinet      (3)Sit on the chair
    chair_cabinet=False
    
    choice_chair=input('''
You picked the chair! What should we do with it?
(1)climb on top of the chair    (2)push the chair to the cabinet    (3)sit on the chair
''')
    #(1)Climb onto the chair
        #Chair not close enough to the cabinet, decide what to do
            #on_chair()
    if choice_chair=="climb on top of the chair" or choice_chair=="1":
        print('''
The chair is too far from the cabinet! What should we do?''')
        on_chair()
    #(2)Push chair to cabinet
        #Chair is now in contact with the cabinet
            #(1)Climb chair     (2) Sit on the chair
    elif choice_chair=="push the chair to the cabinet" or choice_chair=="2":
        chair_cabinet=True
        chair_push(chair_cabinet)
    #(3)Sit on the chair
        #It's a very comfortable chair, but sitting won't help us get to the cookie!
        #on_chair()
    elif choice_chair=="sit on the chair" or choice_chair=="3":
        sit_chair(chair_cabinet)
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        chair()
        
def chair_push(chair_cabinet):
    choice_push_chair=input('''
You pushed the chair to the cabinet! What's next?
(1)climb onto the chair      (2)sit on the chair
''')
    #(1)Climb chair
        #Near to cabinet door handle but not tall enough
        #(1)Tip toe     #(2)Jump
    if choice_push_chair=="climb onto the chair" or choice_push_chair=="1":
        climb_chair()
    elif choice_push_chair=="sit on the chair" or choice_push_chair=="2":
        sit_chair(chair_cabinet)
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        chair_push(chair_cabinet)

def on_chair():
    #(1)Get down    (2)Jump onto kitchen counter
    choice_on_chair=input('''(1)get down    (2)jump onto the kitchen counter
''')
    #(1)Get down
        #Get down, back to chair()
    if choice_on_chair=="get down" or choice_on_chair=="1":
        print("Let's get back down from the chair.")
        chair()
    #(2)Jump onto kitchen counter
        #Kitchen counter is too far away, lands and injures self.
        #mum() Mum hears you crying. THE END
    elif choice_on_chair=="jump onto the kitchen counter" or choice_on_chair=="2":
        mum('''
The kitchen counter is too far away!!! Argh!!! 
*Falls and injures yourself*
Mum hears you crying.''')
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        on_chair()

def climb_chair():
    climb_push_chair=input('''
You're so close to the cookie jar!
Almost there! But you're still a little too short to reach for it.
What should we do?
(1)tip toe      (2)jump
''')
    #(1)Tip toe
        #You managed to reach the cookie jar! Congratulations!
        #Exit game
    if climb_push_chair=="tip toe" or climb_push_chair=="1":
        win()
    #(2)Jump
        #You jump, missed the jar and landed back on the chair, only
        #to fall down to the ground
        #mum() Mum hears you crying. THE END
    elif climb_push_chair=="jump" or climb_push_chair=="2":
        mum('''
You jump! Towards a dream! But unfortunately, you missed the jar. You landed back onto the chair,
only to fall down to the ground. Your mum hears you crying.
''')
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        climb_chair()
    

def sit_chair(chair_cabinet):
    if chair_cabinet==False:
        print('''
It's a very comfortable chair, but sitting won't help you get to the cookie!''')
        on_chair()
    elif chair_cabinet==True:
        push_sit=input('''
Why are you sitting down on the chair? You're almost there! Let's get to the cookie jar!
(1)stand on the chair       (2)get off the chair
''')
        if push_sit=="stand on the chair" or push_sit=="1":
            climb_chair()
        elif push_sit=="get off the chair" or push_sit=="2":
            chair_push(chair_cabinet)
        else:
            print('''
That's not either one of the choices! Can't you read?''')
            sit_chair(chair_cabinet)
        
################################################################################################
            
def stool():
    stool_cabinet=False
    # if stool_cabinet==False:
    #(1)Climb onto the stool    #(2)Push stool to cabinet       #(3)Sit on the stool
    choice_stool=input('''
You picked the stool! What should we do with it?
(1)climb onto the stool    (2)push stool to the cabinet    (3)sit on the stool
''')
    #(1)Climb onto the stool
        #Stool not close enough to the cabinet, decide what to do
            #on_stool()
    if choice_stool=="climb onto the stool" or choice_stool=="1":
        on_stool(stool_cabinet)
    #(2)Push stool to cabinet
        #stool_cabinet=True
        #Stool is now in contact with the cabinet
        #(1)Climb stool #(2)Sit on stool
    elif choice_stool=="push stool to the cabinet" or choice_stool=="2":
        stool_cabinet=True
        on_stool(stool_cabinet)
    #(3)Sit on the stool
        #It's a very comfortable stool, but it is too short to reach the jar level
        #on_stool()
    #elif stool_cabinet==True:
        #(1)Climb onto the stool    #(2)Sit on the stool
        #(1)Climb onto the stool
            #Stool is too short for us to reach the jar level
            #on_stool()
        #(2)Sit on the stool
            #It's a very comfortable stool, but it is too short to reach the jar level
            #on_stool()
    elif choice_stool=="sit on the stool" or choice_stool=="3":
        choice_on_stool=input('''
It's a very comfortable stool, but why are you sitting? 
(1)stand on the stool    (2)get down
''')
        if choice_on_stool=="stand on the stool" or choice_on_stool=="1":
            on_stool(stool_cabinet)
        elif choice_on_stool=="get down" or choice_on_stool=="2":
            stool()
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        stool()

def on_stool(stool_cabinet):
    if stool_cabinet==False:
        #(1)Get down    (2)Jump onto kitchen counter
            #(1)Get down
                #Get down, back to stool()
            #(2)Jump onto kitchen counter
                #Kitchen counter is too high up, lands safely on ground.
                #Maybe we should try something else?
                #objects()
        choice_on_stool_f=input('''
The stool is too far away from the cabinet. What should we do?
(1)get down     (2)jump onto the kitchen counter
''')
        if choice_on_stool_f=="get down" or choice_on_stool_f=="1":
            stool()
        elif choice_on_stool_f=="jump onto the kitchen counter" or choice_on_stool_f=="2":
            print('''
The kitchen counter is too high up, you land safely onto the ground after landing.
Maybe we should try something else?''')
            objects()
        else:
            print('''
That's not either one of the choices! Can't you read?''')
            on_stool(stool_cabinet)
    elif stool_cabinet==True:
        push_stool(stool_cabinet)

def push_stool(stool_cabinet):
    choice_on_stool_t=input('''
You pushed the stool to the cabinet! What's next?
(1)climb stool   (2)sit on the stool
''')
    #(1)Climb stool
        #Stool is too short for us to reach the jar level
        #objects()
    if choice_on_stool_t=="climb stool" or choice_on_stool_t=="1":
        print('''
This stool is too short for us to reach the cookie jar!
Maybe we should try something else?''')
        objects()
    #(2)Sit on stool
        #It's a very comfortable stool, but it is too short to reach the jar level
        #on_stool()
    elif choice_on_stool_t=="sit on the stool" or choice_on_stool_t=="2":
        sit_stool=input('''
It's a very comfortable stool, but why are you sitting? 
(1)stand on the stool    (2)get down
''')
        if sit_stool=="stand on the stool" or sit_stool=="1":
            print('''
This stool is too short for us to reach the cookie jar!
Maybe we should try something else?''')
            objects()
        elif sit_stool=="get down" or sit_stool=="2":
            push_stool(stool_cabinet)
        else:
            print('''
That's not either one of the choices! Can't you read?''')
            push_stool(stool_cabinet)
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        push_stool(stool_cabinet)
            
################################################################################################

def books():
    #(1)Stack books     #(2)Read books
    choice_books=input('''
You picked the books! What should we do with them?
(1)stack books    (2)read books
''')
    #(1)Stack books
        #stack_books()
    if choice_books=="stack books" or choice_books=="1":
        stack_books()
    #(2)Read books
        #mum() Read books until fall asleep, gets abruptly woken up by mum. THE END
    elif choice_books=="read books" or choice_books=="2":
        mum('''
You read the books.
They're so interesting!
Did you know that brown chickens lay brown eggs and white chickens lay white eggs?!
You fall asleep from reading and learning about all these interesting facts.
The next thing you know, your mum wakes you up abruptly and tells you its time for dinner.
''')
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        books()
        
def stack_books():
    #How many books do we need? -> input from player
    num_books=input('''
How many books do you need?
''')
    #if input=0:
        #How can we stack with 0 books?
        #stack_books()
    if num_books=='0':
        print('''
How can you stack with 0 books?
Try another number!''')
        stack_books()
    #elif 20>=input>0:
        #Climb onto books but still not enough books to reach cookie jar!
        #stack_books()
    elif num_books=='1':
        print('''
1 book isn't going to get you to the glorious cookies, try stacking more books!''')
        stack_books()
    elif num_books.isnumeric() and 20>=int(num_books)>0:
        print(f'''
You stacked {num_books} books but that's not enough books to reach the cookie jar!
Try another number!''')
        stack_books()
    #if 49>=input>=21:
        #That's enough books! We made it! Hurray for cookies!
        #Exit game
    elif num_books.isnumeric() and 49>=int(num_books)>=21:
        win()
    #if input>=50:
        #We don't have that many books in the house! Probably have to borrow from Timmy
        #stack_books()
    elif num_books.isnumeric() and int(num_books)>=50:
        print('''
We don't have THAT many books in the house!
We will probably have to borrow from Timmy next door!
Maybe try lesser books?''')
        stack_books()
    else:
        print('''
That's not either one of the choices! Can't you read?''')
        stack_books()

################################################################################################

def mum(x):
    #call for function when player reaches bad ending
    #print something within function to signal to player that they have lost
    #exit(0)
    print(f'''{x}
    
  _______   _____   __     __               _____              _____   _   _    _ 
 |__   __| |  __ \  \ \   / /      /\      / ____|     /\     |_   _| | \ | |  | |
    | |    | |__) |  \ \_/ /      /  \    | |  __     /  \      | |   |  \| |  | |
    | |    |  _  /    \   /      / /\ \   | | |_ |   / /\ \     | |   | . ` |  | |
    | |    | | \ \     | |      / ____ \  | |__| |  / ____ \   _| |_  | |\  |  |_|
    |_|    |_|  \_\    |_|     /_/    \_\  \_____| /_/    \_\ |_____| |_| \_|  (_)

''')
    exit(0)

def win():
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
    exit(0)
    
start()