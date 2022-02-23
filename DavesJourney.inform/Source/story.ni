"Rainbow Dave's Journey" by Liam Calahan

[rules]
Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

A person has a text called Spoken To. The Spoken To of a person is usually "no".


[scenes]

Getting Acquainted is a scene. Getting Acquainted begins when Entire Game begins. Getting Acquainted ends when talking to Swimmy.

Exploring is a scene. Exploring begins when Getting Acquainted ends.

[code]
When play begins, say "You wake up in the morning and you are in your bedroom, but your magic powers are gone! Uh Oh..."


Chapter 1 - Starting Floor

Section - Dave


Dave's Bedroom is a room. "You are in a small bedroom with a bed and a closet. To your south is the exit."

Hallway Outside Dave's Room is a room. Hallway Outside Dave's Room is south of Dave's door. "You are in a hallway. To your north is a door labeled 'Dave's room', Room 201, and to your east and west the hallway continues."

The Bed is scenery. The Bed is in Dave's Bedroom. Description is "A purple bed with pictures of mangoes. Not much else to see."

The Closet is an openable container. The Closet is in Dave's Bedroom. The Closet is closed. Description is "A dusty brown closet. Not much to see."

Dave's door is south of Dave's Bedroom. Dave's door is a door. Dave's door is scenery. Dave's door is lockable and unlocked.

Section - Sylvia

Hallway Outside Room 200 is a room. Hallway Outside Room 200 is west of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Sylvia's room', Room 200, and to your east there is a hallway, and to your west there is an elevator." 

Sylvia's Room is a room. Sylvia's Room is north of Sylvia's door. "You are in a pink bedroom with a bed and a closet, and an oven that smells like chocolate cake. To your south is the exit."

Sylvia is in Sylvia's Room. Sylvia is a person. Sylvia is carrying Pink Magic Crystal. The Description of Pink Magic Crystal is "A small gem emitting a pink glow.". Sylvia has a text called Doing. Doing of Sylvia is "snoring loudly on the bed".	"Sylvia is [Doing of Sylvia]." Description is "Upon closer examination, Sylvia seems to be dreaming about chocolate cake." Instead of talking to Sylvia while the Doing of Sylvia is "yet again asleep", say "She is fast asleep, dreaming about fancy chocolate and dancing." Instead of talking to Sylvia while the Doing of Sylvia is "snoring loudly on the bed", say "She is fast asleep, dreaming about fancy chocolate and dancing." 

Instead of waking Sylvia:
	say "Sylvia wakes up.";
	say "(Sylvia) What is going on???";
	say "(You) I lost all of my powers! Do you have a magic crystal?";
	say "(Sylvia) Yes, but I will give you one only if you bring me chocolate.";
	now the Doing of Sylvia is "trying to fall asleep";
	now the Spoken To of Sylvia is "yes".
Instead of waking Sylvia while the Spoken to of Sylvia is "yes" and the Doing of Sylvia is "yet again asleep":
	say "(Sylvia) STOP IT DAVE!!!";
	now the Doing of Sylvia is "trying to fall asleep"
	
Instead of waking Sylvia while the Spoken to of Sylvia is "yes" and the Doing of Sylvia is "trying to fall asleep":
	say "(Sylvia) Shhhhh. I am trying to go to sleep Dave."
	
Instead of talking to Sylvia while the Spoken to of Sylvia is "yes" and the Doing of Sylvia is "trying to fall asleep":
	say "(Sylvia) Shhhhh. I am trying to go to sleep Dave."

Every turn when player can see Sylvia:
	If the Doing of Sylvia is "trying to fall asleep":
		If a random chance of 1 in 3 succeeds:
			Now the Doing of Sylvia is "yet again asleep";
			say "Sylvia fell asleep again."
			
Instead of giving Chocolate Candies to Sylvia while the Spoken To of Sylvia is "yes":
	say "(Sylvia) Hmmmmmm? Oh, CHOCOLATE!!!!!!";
	remove Chocolate Candies from play;
	say "(Sylvia) Ok, I guess I should give you your magic crystal now.";
	now the player is carrying Pink Magic Crystal.
	
Instead of giving Chocolate Candies to Sylvia while the Spoken To of Sylvia is "no":
	say "Sylvia is fast asleep, and has no interest in anything."

Sylvia's door is north of Hallway Outside Room 200. Sylvia's door is a door. Sylvia's door is scenery. Sylvia's door is lockable and locked. Small Key unlocks Sylvia's door.

Section - Swimmy

Hallway Outside Room 202 is a room. Hallway Outside Room 202 is east of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Swimmy's Room', Room 202, and to your west there is a hallway."

Swimmy's Room is a room. Swimmy's Room is north of Swimmy's door. "You are in a bedroom with ocean wallpaper, a bed, a couch, and a bunch of tools on top of a desk."

Swimmy is in Swimmy's Room. Swimmy is a person. the Spoken To of Swimmy is "no". "Swimmy is sitting on the couch reading a book." Instead of examining Swimmy, say "(Swimmy) Hi Dave!" Instead of talking to Swimmy:
	say "(Swimmy) Hi Dave, what is it?";
	say "(You) I lost my magic powers this morning.";
	say "(Swimmy) Oh no!";
	say "He pauses and looks something up on his computer.";
	say "(Swimmy) Apparently you can get them back, you just need to find 4 magic crystals! Maybe you can find them. Look around!";
	Now the Spoken To of Swimmy is "yes";
Instead of talking to Swimmy while the Spoken To of Swimmy is "yes":
	say "(Swimmy) Good luck Dave!"
	
Swimmy's door is north of Hallway Outside Room 202. Swimmy's door is a door. Swimmy's door is scenery. Swimmy's door is lockable and unlocked.
	
Section - Elevators

Elevator Floor 2 is a room. Elevator Floor 2 is west of Hallway Outside Room 200. "You are in an elevator room. The elevator can go up or down. To your east is a hallway." 

Before going up in Elevator Floor 2 during Getting Acquainted, say "Hmm... maybe I should go talk to some people before I leave." instead. Before going down in Elevator Floor 2 during Getting Acquainted, say "Hmm... maybe I should go talk to some people before I leave." instead.

Elevator Floor 1 is a room. Elevator Floor 1 is below Elevator Floor 2. "You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled 'Commons'."

Elevator Floor 3 is a room. Elevator Floor 3 is above Elevator Floor 2. "You are in an elevator room. The elevator can go down but not up. To your south is a door labeled 'Pool', and to your east is a door labeled 'Dining Room and Rooms'."

Chapter 2 - Bottom Floor

Section - Bear Bear

Hallway Outside Room 100 is a room. Hallway Outside Room 100 is east of Elevator Floor 1. "You are in a hallway. To your north is a door labeled 'Bear Bear's Room', Room 100, and to your east there is a hallway, and to your west there is an elevator."

BearBear's Room is a room. BearBear's Room is north of BearBear's door. "You are in a bedroom with honey wallpaper, a bed, a couch, a TV, and a bunch of books on top of a shelf."

BearBear is in BearBear's Room. BearBear is a person. "Bear Bear is sitting on the couch watching basketball." BearBear is carrying Chocolate Candies. Description of Chocolate Candies is "A pack of candy labeled M&Ms". Understand "chocolate" or "candy" as chocolate candies. Instead of examining BearBear, say "(Bear Bear) Hi Dave!" Understand "Bear" or "Bear Bear" as BearBear. Instead of talking to BearBear:
	say "(Bear Bear) What is it, Dave?";
	say "(You) Oh, I lost my powers this morning...";
	say "(Bear Bear) Hmmm... I have something that might help you, but could you find me a honey cake from the kitchen first?";
	say "(You) Ok, I will bring one back here.";
		Now the Spoken To of BearBear is "yes";
Instead of talking to BearBear while the Spoken To of BearBear is "yes":
	say "(Bear Bear) I want some cake!"
	
Every turn when player can see BearBear:
	If a random chance of 1 in 2 succeeds:
		say "Bear Bear yells at the TV."
		
Instead of giving Honey Cake to BearBear:
	say "(Bear Bear) Oh wow! Thank you!";
	remove Honey Cake from play;
	say "(Bear Bear) Thanks! Hmm, what can I give you? Oh! I have some M&Ms. Here you go!";
	now the player is carrying Chocolate Candies.
		
BearBear's door is north of Hallway Outside Room 100. BearBear's door is a door. BearBear's door is scenery. BearBear's door is lockable and unlocked.

Section - Little Giraffe

Hallway Outside Room 101 is a room. Hallway Outside Room 101 is east of Hallway Outside Room 100. "You are in a hallway. To your north is a door labeled 'Little Giraffe's Room', Room 101, and to your east and west there is more hallway."

Little Giraffe's Room is a room. Little Giraffe's Room is north of Little Giraffe's door. "You are in a bedroom with grassy wallpaper, a bed, a couch, a desk, and a bunch of books on top of a shelf."

Little Giraffe is in Little Giraffe's Room. Little Giraffe is a person. "Little Giraffe is sitting on the couch watching TV." Little Giraffe is carrying Pogo Stick. Description of Pogo Stick is "A stick with a handle, two footholds, and it is very bouncy." Instead of examining Little Giraffe, say "(Little Giraffe) Hi Dave!" Instead of talking to Little Giraffe:
	say "(Little Giraffe) What is it, Dave? Did you bring me candy?";
	say "(You) No, but I lost my powers this morning...";
	say "(Little Giraffe) Maybe I have something that will help. If you find my pool floatie I will give you one of my special toys!";
	say "(You) Ok, I will find it!.";
		Now the Spoken To of Little Giraffe is "yes";
Instead of talking to Little Giraffe while the Spoken To of Little Giraffe is "yes":
	say "(Little Giraffe) I hope you find it!"		
	
Every turn when Player can see Little Giraffe:
	If a random chance of 1 in 2 succeeds:
		say "[one of] A loud explosion comes from the TV. [or] Little Giraffe cheers at something on the TV. [at random]"
		
Instead of giving Floatie to Little Giraffe:
	remove Floatie from play;
	say "(Little Giraffe) Thanks! Where was it?";
	say "(You) It was at the pool, obviously.";
	say "(Little Giraffe) Oh. Well, you can have this pogo stick!";
	now the player is carrying pogo stick.
		
Little Giraffe's door is north of Hallway Outside Room 101. Little Giraffe's door is a door. Little Giraffe's door is scenery. Little Giraffe's door is lockable and unlocked.

Section - Big Giraffe

Hallway Outside Room 102 is a room. Hallway Outside Room 102 is east of Hallway Outside Room 101. "You are in a hallway. To your north is a door labeled 'Big Giraffe's Room', Room 102, and to your west there a hallway."

Big Giraffe's Room is a room. Big Giraffe's Room is north of Big Giraffe's door. "You are in a bedroom with grassy wallpaper, a bed, a couch, a desk, and  photos on the wall."

Big Giraffe is in Big Giraffe's Room. Big Giraffe is a person. "Big Giraffe is sewing something." Instead of examining Big Giraffe, say "(Big Giraffe) Hello Dave." Instead of talking to Big Giraffe:
	say "(Big Giraffe) Hi Dave.";
	say "(You) I lost my powers this morning!";
	say "(Big Giraffe) Oh no! Sorry, but there is not much I can do. Try talking to Little Giraffe.";
	say "(You) I already did!";
	say "(Big Giraffe) Oh, then maybe she has something for you. Good luck Dave!";
		Now the Spoken To of Big Giraffe is "yes";
Instead of talking to Big Giraffe while the Spoken To of Little Giraffe is "no":
	say "(Big Giraffe) Sorry, but I am a little bit busy. Maybe you can go talk to Little Giraffe? She is in the next room over.";
	Now the Spoken To of Big Giraffe is "yes";
Instead of talking to Big Giraffe while the Spoken To of Big Giraffe is "yes":
	say "Try talking to Little Giraffe."
	
Big Giraffe's door is north of Hallway Outside Room 102. Big Giraffe's door is a door. Big Giraffe's door is scenery. Big Giraffe's door is lockable and unlocked.

Chapter 3 - Top Floor

Section - Tiggery

Hallway Outside Room 300 is a room. Hallway Outside Room 300 is east of Elevator Floor 3. "You are in a hallway. To your north is a door labeled 'Tiggery's Room', Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room."

Tiggery's Room is a room. Tiggery's Room is north of Tiggery's door. "You are in a bedroom with orange striped wallpaper, a bed, a couch, a desk, and tools hanging on the wall."

Tiggery is in Tiggery's Room. Tiggery is a person. "Tiggery is making something with his tools." Instead of examining Tiggery, say "(Tiggery) Hmmm? Oh! Hi Dave." Tiggery is carrying Small Key. Description of Small Key is "A key that is labeled 'Sylvia's key'." Instead of talking to Tiggery:
	say "(Tiggery) What's going on, Dave?";
	say "(You) I lost my powers this morning!";
	say "(Tiggery) That's not good! Swimmy probably already told you, but you need apparently 4 magic crystals.";
	say "(You) I know!";
	say "(Tiggery) Anyway, I don't have anything to help you with, sorry. If you could bring me some sushi that would be good though!";
		Now the Spoken To of Tiggery is "yes";
Instead of talking to Tiggery while the Spoken To of Tiggery is "yes":
	say "(Tiggery) Sushi is the best! You can probably find some in the Dining Room."
	
Instead of giving Sushi to Tiggery:
	say "(Tiggery) Oh wow! Thank you!";
	remove Sushi from play;
	say "(Tiggery) I just realized, I can give you this Key. I don't know why you would want it, but here you go!";
	now the player is carrying Small Key.
		
Tiggery's door is north of Hallway Outside Room 300. Tiggery's door is a door. Tiggery's door is scenery. Tiggery's door is lockable and unlocked.

Section - Orca Room

Hallway Outside Room 301 is a room. Hallway Outside Room 301 is east of Hallway Outside Room 300. "You are in a hallway. To your north is a door labeled 'Orca's Room', Room 301, and to your west there is a hallway."

Orca's Room is a room. Orca's Room is north of Orca's door. "You are in a bedroom with orange striped wallpaper, a bed, a couch, a desk, and tools hanging on the wall."

Orca's door is north of Hallway Outside Room 301. Orca's door is a door. Orca's door is scenery. Orca's door is lockable and locked.

Instead of attacking a door, say "Ummm... you'll get kicked out of SPICH for that."

Section - Dining Room

Dining Room is a room. Dining Room is south of Hallway Outside Room 300. "You are in a large area with a bunch of round tables. To your north is a hallway, and to your west is a door to the pool."

Section - Orca

Orca is a person. Orca is in Dining Room. "Orca is sitting at one of the tables." Orca is carrying Sushi. the description of Sushi is "Delicious cucumber sushi." Orca has a text called Sushi Given. The Sushi Given of Orca is "no". Instead of examining Orca, say "(Orca) Hi!" Instead of talking to Orca while the Spoken To of Tiggery is "yes":
	say "(Orca) Swimmy told me what happened, Dave.";
	say "(You) Can you help me?";
	say "(Orca) What do you need?";
	say "(You) Do you have any sushi?";
	say "(Orca) Oh! Yes, here you go. Bye Dave!";
	now the Spoken To of Orca is "yes";
	now the Sushi Given of Orca is "yes";
	now the player is carrying Sushi.
Instead of talking to Orca while the Spoken To of Tiggery is "no":
	say "(Orca) Swimmy told me what happened, Dave.";
	say "(You) Can you help me?";
	say "(Orca) What do you need?";
	say "(You) Um, nothing.";
	say "(Orca) Well, have some sushi!";
	say "You eat sushi with Orca.";
	say "(Orca) Bye Dave!";
	now the Spoken To of Orca is "yes";
Instead of talking to Orca while the Spoken To of Tiggery is "yes" and the Spoken To of Orca is "yes":
	say "(Orca) Hi again! Do you need anything?";
	say "(You) Could I have some sushi to take to Tiggery?";
	say "(Orca) Sure! Here you go! Bye!";
	now the Sushi Given of Orca is "yes";
	now the player is carrying Sushi.
Instead of talking to Orca while the Sushi Given of Orca is "no":
	say "(Orca) Good luck!"
Instead of talking to Orca while the Spoken To of Orca is "yes" and the Spoken To of Tiggery is "no":
	say "(Orca) Good luck!"

Section - Fladibearius

Fladibearius is in the Dining Room. Fladibearius is a person. "Fladibearius is sitting at another table." Fladibearius is carrying Honey Cake. Description of honey cake is "A delicious smelling cake." Fladibearius has a text called Cake Given. The cake given of Fladibearius is "no". Instead of talking to Fladibearius:
	Now the Spoken To of Fladibearius is "yes";
	say "(Fladibearius) Hi Dave, I heard about what happened. I can't really help you, sorry!";
	say "(You) That's fine Fladibearius. What are you eating?";
	say "(Fladibearius) This is honey cake. Do you want any?";
	say "(Yes or No)>";
	if player consents:
		say "(Fladibearius) Here you are!";
		Now the Cake Given of Fladibearius is "yes";
		now the player is carrying Honey Cake;
	otherwise:
		say "(Fladibearius) Suit yourself. It is very yummy.";
	
Instead of talking to Fladibearius while the Spoken To of Fladibearius is "yes" and the Cake Given of Fladibearius is "no":
	say "(Fladibearius) Now do you want some cake?";
	say "(Yes or No)>";
	if player consents:
		say "(Fladibearius) Here you are!";
		Now the Cake Given of Fladibearius is "yes";
		now the player is carrying Honey Cake;
	otherwise:
		say "(Fladibearius) Suit yourself. It is very yummy.";
Instead of talking to Fladibearius while the Spoken To of Fladibearius is "yes" and the Cake Given of Fladibearius is "yes":
	say "(Fladibearius) I hope you get your powers back Dave!"
	
Section - Pool

Outdoor Poolroom is a room. Outdoor Poolroom is south of Elevator Floor 3 and west of Dining Room. "A large outdoor pool. To the east is the Dining Room, and to the North is the Elevator."

The Pool is Scenery. The Pool is in the Outdoor Poolroom. The description is "The sun reflects off the water, and you can see something floating on the water. It appears to be a giraffe floatie."

Floatie is an object. Floatie is on The Pool. Description is "A slightly deflated pool floatie that looks like a giraffe." Floatie is undescribed. Understand "giraffe" or "giraffe floatie" as Floatie.

Chapter 4 - Outside of SPICH

[unfinished]
