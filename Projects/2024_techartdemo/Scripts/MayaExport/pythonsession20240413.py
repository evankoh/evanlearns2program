    matching_objects = [obj for obj in all_objects if pattern in obj]
	
matching_objects=[]
for obj in all_objects:
	if pattern in obj:
		matching_objects.append(obj)
		
		#please write down code like the one below
		#reason being is the second lines of code is easier to debug
        
        #mayaexport custom dialog: what does the ? do