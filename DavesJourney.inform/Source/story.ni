"Rainbow Dave's Journey" by Liam Calahan

[rules]
Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

A person has a text called Spoken To. The Spoken To of a person is usually "no".

Using is an action applying to one visible thing. Understand "use [thing]" or "activate [thing]" as using.

Instead of Using something:
	say "You can't use [the noun] right now."


[scenes]


Getting Acquainted is a scene. Getting Acquainted begins when Entire Game begins. Getting Acquainted ends when talking to Swimmy.

Exploring is a scene. Exploring begins when Getting Acquainted ends.

[code]
When play begins, say "You wake up in the morning and you are in your bedroom, but your magic powers are gone! Uh Oh..."

The description of the player is "Fast, crazy, and energetic, just like a true Rainbow Dave."


Chapter 1 - Starting Floor

Floor Two is a region. Dave's Bedroom, Swimmy's room, Sylvia's Room, Hallway Outside Dave's Room, Hallway Outside Room 200, Hallway Outside Room 202, and Elevator Floor 2 are part of Floor Two.

Section - Dave

Dave's Bedroom is a room. "You are in a small bedroom with a bed and a closet. To your south is the exit."

Hallway Outside Dave's Room is a room. Hallway Outside Dave's Room is south of Dave's door. "You are in a hallway. To your north is a door labeled 'Dave's room', Room 201, and to your east and west the hallway continues."

Dave's Bed is scenery. Dave's Bed is in Dave's Bedroom. Description is "A purple bed with pictures of mangoes. Not much else to see."

The Closet is an openable container. The Closet is in Dave's Bedroom. The Closet is closed. Description is "A dusty brown closet. Not much to see."

Dave's door is south of Dave's Bedroom. Dave's door is a door. Dave's door is scenery. Dave's door is lockable and unlocked.

Section - Sylvia

Hallway Outside Room 200 is a room. Hallway Outside Room 200 is west of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Sylvia's room', Room 200, and to your east there is a hallway, and to your west there is an elevator." Every turn while player is in Hallway Outside room 200:
	say "You can hear snores from under the door."

Sylvia's Room is a room. Sylvia's Room is north of Sylvia's door. "You are in a pink bedroom with a bed and a closet, and an oven that smells like chocolate cake. To your south is the exit."

Sylvia is in Sylvia's Room. Sylvia is a person. Sylvia is carrying Pink Magic Crystal. The Description of Pink Magic Crystal is "A small gem emitting a pink glow.". Sylvia has a text called Doing. Doing of Sylvia is "snoring loudly on the bed".	"Sylvia is [Doing of Sylvia]." Description is "Upon closer examination, Sylvia seems to be dreaming about chocolate cake." Instead of talking to Sylvia while the Doing of Sylvia is "yet again asleep", say "She is fast asleep, dreaming about fancy chocolate and dancing." Instead of talking to Sylvia while the Doing of Sylvia is "snoring loudly on the bed", say "She is fast asleep, dreaming about fancy chocolate and dancing." 

Sylvia's Bed is scenery. Sylvia's Bed is in Sylvia's room. Description is "A pink bed with pictures of flowers."

Sylvia's Oven is scenery. Sylvia's Oven is in Sylvia's room. Description is "The oven still has an odor of chocolate, and there are some smears of it inside the oven."

Sylvia's Closet is scenery. Sylvia's Closet is in Sylvia's room. Description is "The pink closet is full of fancy clothes."

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

Sylvia's door is north of Hallway Outside Room 200. Sylvia's door is a door. Sylvia's door is scenery. Sylvia's door is lockable and locked. Sylvia's Key unlocks Sylvia's door.

Section - Swimmy

Hallway Outside Room 202 is a room. Hallway Outside Room 202 is east of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Swimmy's Room', Room 202, and to your west there is a hallway."

Swimmy's Room is a room. Swimmy's Room is north of Swimmy's door. "You are in a bedroom with ocean wallpaper, a bed, a couch, and a bunch of tools on top of a desk."

Swimmy is in Swimmy's Room. Swimmy is a person. the Spoken To of Swimmy is "no". "Swimmy is sitting on the couch reading a book." Instead of examining Swimmy, say "(Swimmy) Hi Dave!" Instead of talking to Swimmy:
	say "(Swimmy) Hi Dave, what is it?";
	say "(You) I lost my magic powers this morning.";
	say "(Swimmy) Oh no!";
	say "He pauses and looks something up on his computer.";
	say "(Swimmy) Apparently you can get them back, you just need to find 3 magic crystals! Maybe you can find them. Look around! And if you find them, make sure to bring them back to me.";
	Now the Spoken To of Swimmy is "yes";
Instead of talking to Swimmy while the Spoken To of Swimmy is "yes":
	if player is carrying Pink Magic Crystal:
		If player is carrying Blue Magic Crystal:
			If player is carrying Green Magic Crystal:
				say "You did it Dave! Now we can get your powers back!";
				say "Swimmy places all the crystals onto your horn.";
				say "Suddenly, you feel normal again, like if your foot was asleep and then came back. [paragraph break] You go out onto the balcony and celebrate by launching fireworks from your horn.";
				end the story saying "Congratulations, Dave!";
			otherwise:
				say "(Swimmy) Good luck Dave!";
		otherwise:
			say "(Swimmy) Good luck Dave!";
	otherwise:
		say "(Swimmy) Good luck Dave!";
		
Swimmy's Bed is scenery. Swimmy's Bed is in Swimmy's room. Description is "A blue bed with pictures of kelp."

Swimmy's Couch is scenery. Swimmy's couch is in Swimmy's room. Description is "A blue couch with a turtle sitting on it."

Swimmy's Desk is scenery. Swimmy's Desk is in Swimmy's room. Description is "A wooden desk, looks like Swimmy made it himself. On top are some tools."

Swimmy's Tools are scenery. Swimmy's Tools are in Swimmy's room. Description is "A bunch of tools including hammers, drills, and electromagic cutting lasers."
	
Swimmy's door is north of Hallway Outside Room 202. Swimmy's door is a door. Swimmy's door is scenery. Swimmy's door is lockable and unlocked.		
	
Section - Elevators

Elevator Floor 2 is a room. Elevator Floor 2 is west of Hallway Outside Room 200. "You are in an elevator room. The elevator can go up or down. To your east is a hallway." 

Before going up in Elevator Floor 2 during Getting Acquainted, say "Hmm... maybe I should go talk to some people before I leave." instead. Before going down in Elevator Floor 2 during Getting Acquainted, say "Hmm... maybe I should go talk to some people before I leave." instead.

Elevator Floor 1 is a room. Elevator Floor 1 is below Elevator Floor 2. "You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled 'Commons'."

Elevator Floor 3 is a room. Elevator Floor 3 is above Elevator Floor 2. "You are in an elevator room. The elevator can go down but not up. To your south is a door labeled 'Pool', and to your east is a door labeled 'Dining Room and Rooms'."

Chapter 2 - Bottom Floor

Floor One is a region. Hallway Outside Room 100, Hallway Outside Room 101, Hallway Outside Room 102, Hallway Outside Room 103, Little Giraffe's room, Big Giraffe's room, BearBear's room, Kelpweed's room, Lobby, Commons, and Elevator Floor 1 is part of Floor One.

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
	
BearBear's Bed is scenery. BearBear's Bed is in BearBear's room. Description is "A brown bed with pictures of honey."

BearBear's Couch is scenery. BearBear's couch is in BearBear's room. Description is "A brown couch with a bear sitting on it."

BearBear's Shelf is scenery. BearBear's Shelf is in BearBear's room. Description is "A wooden shelf, has some books on top that are too high to see clearly."

BearBear's Books are scenery. BearBear's Books are in BearBear's room. Description is "They are too high to see clearly."

BearBear's TV is scenery. BearBear's TV is in BearBear's room. Description is "BearBear is watching the Rangers vs. the Tigers. [one of] The Rangers are winning. [or] The Tigers are winning. [at random]"
	
BearBear's door is north of Hallway Outside Room 100. BearBear's door is a door. BearBear's door is scenery. BearBear's door is lockable and unlocked.

Section - Little Giraffe

Hallway Outside Room 101 is a room. Hallway Outside Room 101 is east of Hallway Outside Room 100. "You are in a hallway. To your north is a door labeled 'Little Giraffe's Room', Room 101, and to your east and west there is more hallway."

Little Giraffe's Room is a room. Little Giraffe's Room is north of Little Giraffe's door. "You are in a bedroom with grassy wallpaper, a bed, a couch, and a desk."

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
		
Instead of giving Giraffe Floatie to Little Giraffe while the Spoken To of Little Giraffe is "yes":
	remove Giraffe Floatie from play;
	say "(Little Giraffe) Thanks! Where was it?";
	say "(You) It was at the pool, obviously.";
	say "(Little Giraffe) Oh. Well, you can have this pogo stick!";
	now the player is carrying pogo stick.
		
Little Giraffe's Bed is scenery. Little Giraffe's Bed is in Little Giraffe's room. Description is "A yellow bed with pictures of flowers."

Little Giraffe's Couch is scenery. Little Giraffe's couch is in Little Giraffe's room. Description is "A yellow couch with a giraffe sitting on it."

Little Giraffe's Desk is scenery. Little Giraffe's Desk is in Little Giraffe's room. Description is "A wooden desk, looks like Swimmy made it for her. There is some homework on the desk as well as random pieces of paper with tic tac toe on them."

Little Giraffe's TV is scenery. Little Giraffe's TV is in Little Giraffe's room. Description is "Little Giraffe is watching Muffy the Stuffie. This episode is about Muffy trying to blow up the car so she doesn't have to go to the vet."

Little Giraffe's door is north of Hallway Outside Room 101. Little Giraffe's door is a door. Little Giraffe's door is scenery. Little Giraffe's door is lockable and unlocked.

Section - Big Giraffe

Hallway Outside Room 102 is a room. Hallway Outside Room 102 is east of Hallway Outside Room 101. "You are in a hallway. To your north is a door labeled 'Big Giraffe's Room', Room 102, and to your east and west there a hallway."

Big Giraffe's Room is a room. Big Giraffe's Room is north of Big Giraffe's door. "You are in a bedroom with grassy wallpaper, a bed, a couch, and photos on the wall."

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
	
Big Giraffe's Bed is scenery. Big Giraffe's Bed is in Big Giraffe's room. Description is "A yellow bed with pictures of flowers."

Big Giraffe's Couch is scenery. Big Giraffe's couch is in Big Giraffe's room. Description is "A yellow couch with fluffed up pillows."

Photos are scenery. Photos are in Big Giraffe's room. Description is "Some photos of Big Giraffe and Little Giraffe and their friends." Instead of taking photos:
	say "That wouldn't be nice."
	
Big Giraffe's door is north of Hallway Outside Room 102. Big Giraffe's door is a door. Big Giraffe's door is scenery. Big Giraffe's door is lockable and unlocked.

Section - Kelp and Seaweed

Hallway Outside Room 103 is a room. Hallway Outside Room 103 is east of Hallway Outside Room 102. "You are in a hallway. To your north is a door labeled 'Kelp and Seaweed's Room', Room 103, and to your west there a hallway."

Kelpweed's room is a room. Kelpweed's room is north of Kelpweed's door. "You are in a bedroom with ocean wallpaper, two beds, a couch, and a desk."

Kelp is in Kelpweed's room. Kelp is a person. "Kelp is reading on the couch." Instead of examining Kelp, say "(Kelp) Hello Dave." Kelp is carrying Green Magic Crystal. Instead of talking to Kelp:
	say "(Kelp) Hi Dave.";
	say "(You) I lost my powers this morning! I need magic crystals!";
	say "(Kelp) Oh no! Well, you're in luck, because I have a way to make magic crystals! The only problem is that I need river water, and I lost my bucket. Also, I forgot where the river is.";
	say "(You) I'll get some river water for you!";
	say "(Kelp) I will make a crystal for you then!";
		Now the Spoken To of Kelp is "yes";
Instead of talking to Kelp while the Spoken To of Kelp is "yes":
	say "(Kelp) I think my bucket was upstairs somewhere.";
Instead of giving Bucket of River Water to Kelp:
	say "(Kelp) Oh, you found it! Nice.";
	say "Kelp puts it in a pot with a bunch of other ingredients, and it bubbles and pops.";
	say "(Kelp) Here you go!";
	now the player is carrying Green Magic Crystal;
	remove Bucket of River Water from play.
Instead of giving Bucket to Kelp:
	say "(Kelp) Thanks, but could you fill it? I forgot where the river is."

Seaweed is in Kelpweed's Room. 	Seaweed is a person. Seaweed is undescribed. Instead of waking Seaweed:
	say "He is fast asleep. It seems mean to wake him up."
	
Seaweed's Bed is scenery. Seaweed's Bed is in Kelpweed's Room. Description of Seaweed's Bed is "A blue bed with pictures of seaweed (the plant, not the stuffie). Seaweed is buried under the covers snoring loudly."

Kelp's Bed is scenery. Kelp's Bed is in Kelp's room. Description is "A blue bed with pictures of kelp (the plant, not the stuffie)."

Kelpweed's Couch is scenery. Kelpweed's couch is in Kelpweed's room. Description is "A blue couch with a turtle sitting on it."

Kelpweed's Desk is scenery. Kelpweed's Desk is in Kelpweed's room. Description is "A desk covered in plans for different kinds of dessert."

Kelpweed's door is north of Hallway Outside Room 103. Kelpweed's door is a door. Kelpweed's door is scenery. Kelpweed's door is lockable and unlocked.

Section - Commons

Commons is a room. Commons is south of Elevator Floor 1. "You are in a nicely furnished room with a fireplace and some couches and books on the shelf. To your north is the elevator, and to your east is the lobby." [Instead of going south in Elevator Floor 1 when player is not carrying Pink Magic Crystal, say "Let's go explore the living areas before we leave." TAKEN OUT]

Commons Fireplace is scenery. Commons Fireplace is in Commons. Description is "The firplace crackles warmly, and you feel better."

Commons Couch is scenery. Commons Couch is in Commons. Description is "The couch is red and fluffy, and there are some pillows on it."

Commons Shelf is scenery. Commons Shelf is in Commons. Description is "The shelf is full of books, and it looks old."

Commons Books is scenery. Commons Books is in Commons. Description is "The books are mostly about SPICH, and some are about stuffie planet."

Section - Lobby

Lobby is a room. Lobby is east of Commons. "You are in a entrance lobby. To your west is the commons, and to your south is the exit into the land of Lhivhingrum. For some reason, no one is at the check-in desk. There is a sign on the wall.";

Sign is scenery. Sign is in Lobby. Instead of examining Sign:
	say "Would you like to read the whole thing? It is long.";
	say "(Yes or No)>";
	if player consents:
		say "You read the sign.";
		say "SPICH stands for Stuffie Property In Calahan House. SPICH is a place of safety for stuffies on earth. To travel back to Stuffie Planet, please contact Swimmy or Tiggery. If you want to apply for a room, please do it online. You will receive a message when the room is prepared for you. Note: this may take a few weeks. If you are visiting a friend in SPICH, you will stay in their room.";
		say "(You) I already knew all of that.";
	otherwise:
		say "It is about how to book for SPICH, you don't need to know all that.";

Chapter 3 - Top Floor

Floor Three is a region. Hallway Outside Room 300, Hallway Outside Room 301, Tiggery's Room, Orca's Room, Hallway Outside Room 302, Fladibearius' Room, Dining Room, Outdoor Balcony, and Elevator Floor 3 are part of Floor Three.

Section - Tiggery

Hallway Outside Room 300 is a room. Hallway Outside Room 300 is east of Elevator Floor 3. "You are in a hallway. To your north is a door labeled 'Tiggery's Room', Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room."

Tiggery's Room is a room. Tiggery's Room is north of Tiggery's door. "You are in a bedroom with orange striped wallpaper, a bed, a couch, a desk, and tools hanging on the wall."

Tiggery is in Tiggery's Room. Tiggery is a person. "Tiggery is making something with his tools." Instead of examining Tiggery, say "(Tiggery) Hmmm? Oh! Hi Dave." Tiggery is carrying Sylvia's Key. Description of Sylvia's Key is "A key that is labeled 'Sylvia's key'." Instead of talking to Tiggery:
	say "(Tiggery) What's going on, Dave?";
	say "(You) I lost my powers this morning!";
	say "(Tiggery) That's not good! Swimmy probably already told you, but you need apparently 3 magic crystals.";
	say "(You) I know!";
	say "(Tiggery) Anyway, I don't have anything to help you with, sorry. If you could bring me some sushi that would be good though!";
		Now the Spoken To of Tiggery is "yes";
Instead of talking to Tiggery while the Spoken To of Tiggery is "yes":
	say "(Tiggery) Sushi is the best! You can probably find some in the Dining Room."
	
Tiggery's Bed is scenery. Tiggery's Bed is in Tiggery's room. Description is "An orange bed with black stripes on it."

Tiggery's Couch is scenery. Tiggery's couch is in Tiggery's room. Description is "An orange couch with a striped blanket on it."

Tiggery's Desk is scenery. Tiggery's Desk is in Tiggery's room. Description is "Tiggery's desk is neat and organized, with nothing laying around on it."

Tiggery's Tools are scenery. Tiggery's Tools are in Tiggery's room. Description is "Tiggery tells you that they are his special tools for making furniture."

Instead of giving Sushi to Tiggery:
	say "(Tiggery) Oh wow! Thank you!";
	remove Sushi from play;
	say "(Tiggery) I just realized, I can give you this Key. I don't know why you would want it, but here you go!";
	now the player is carrying Sylvia's Key.
		
Tiggery's door is north of Hallway Outside Room 300. Tiggery's door is a door. Tiggery's door is scenery. Tiggery's door is lockable and unlocked.

Section - Orca Room

Hallway Outside Room 301 is a room. Hallway Outside Room 301 is east of Hallway Outside Room 300. "You are in a hallway. To your north is a door labeled 'Orca's Room', Room 301, and to your east and west there is hallway."

Orca's Room is a room. Orca's Room is north of Orca's door. "You are in a bedroom with orange striped wallpaper, a bed, a couch, a desk, and tools hanging on the wall."

Orca's door is north of Hallway Outside Room 301. Orca's door is a door. Orca's door is scenery. Orca's door is lockable and locked.

Instead of attacking a door, say "Agression only leads to the dark side."

Section - Fladibearius' Room

Hallway Outside Room 302 is a room. Hallway Outside Room 302 is east of Hallway Outside Room 301. "You are in a hallway. To your north is a door labeled 'Fladibearius['] Room', Room 302, and to your west there is a hallway."

Fladibearius' Room is a room. Fladibearius' Room is north of Fladibearius' door. "YOU ARE A BIG CHEATER."

Fladibearius' door is north of Hallway Outside Room 302. Fladibearius' door is a door. Fladibearius' door is scenery. Fladibearius' door is lockable and locked.

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

Outdoor Balcony is a room. Outdoor Balcony is south of Elevator Floor 3 and west of Dining Room. "A large balcony. To the east is the Dining Room, and to the North is the Elevator."

The Pool is in the Outdoor Balcony. The description is "The sun reflects off the water, and you can see something floating on the water. It appears to be a giraffe floatie."

Giraffe Floatie is an object. Giraffe Floatie is on The Pool. Description is "A slightly deflated pool floatie that looks like a giraffe." Giraffe Floatie is undescribed. Understand "giraffe" or "giraffe floatie" as Giraffe Floatie.

Bucket is an object. Bucket is in Outdoor Balcony. Description is "A weathered metal bucket, still good enough to hold water."

Chapter 4 - Outside of SPICH

Lhivhingrum is a region. North Plains of Car Pet, South Plains of Car Pet, Hills of Kauch, Lower Mount Pyanno and Upper Mount Pyanno are part of Lhivhingrum. 

Section - Plains of Car Pet

North Plains of Car Pet is south of Lobby. "You are in a desolate wasteland, and the ground is striped with red and white. To your south the plains continue, to your west is Mount Pyanno, and to your north is the entrance to SPICH."

South Plains of Car Pet is south of North Plains of Car Pet. "You are in a desolate wasteland, and the ground is striped with red and white. To your north the plains continue, to your east is the Hills of Kauch, where you can see the Kauch River, and to your south is the enourmous Bukshelv Cliff."

Section - Mount Pyanno

Lower Mount Pyanno is west of North Plains of Car Pet. "You are on the lower base of a high mountain. The mountain is made of some sort of black rock. The Mountain continues to your west."

Upper Mount Pyanno is west of Lower Mount Pyanno. "You are near the peak of Mount Pyanno. It is too steep to fully summit, though."

Section - Lower Bukshelv Cliff

Lower Bukshelv Cliff is a region. Lower Central Bukshelv Cliff, Lower East Bukshelv Cliff and Lower West Bukshelv Cliff are part of Bukshelv Cliff.

Lower Central Bukshelv Cliff is south of South Plains of Car Pet. "You are at the base of the most enormous cliff imaginable. It is so steep, how on earth can you get up there? The base of the cliff stretches on to your east and west, to your south is the Plains of Car Pet."

Lower East Bukshelv Cliff is east of Lower Central Bukshelv Cliff. "You are at the base of the most enormous cliff imaginable. It is so steep, how on earth can you get up there? The base of the cliff stretches on to your west."

Lower West Bukshelv Cliff is west of Lower Central Bukshelv Cliff. "You are at the base of the most enormous cliff imaginable. It is so steep, how on earth can you get up there? The base of the cliff stretches on to your east."

Benny the Bull is a person. Benny the Bull is in Lower West Bukshelv Cliff. "You see a giant bull who seems to enjoy sitting at the base of this majestic cliff." Instead of talking to Benny the Bull:
	say "(Benny the Bull) I heard that there's a magic crystal up there, but it's too steep for me."
	
Instead of going up in Lower Bukshelv Cliff:
	If player is carrying pogo stick:
		say "BOING! you bounce up the Cliff with your pogo stick.";
		continue the action;
	If player is not carrying Pogo Stick:
		say "You try climbing but you slide back down after a few feet. Hmm... you might need something bouncy?"
		
Section - Upper Bukshelv Cliff

Upper Bukshelv Cliff is a region. Bukshelv Cliff Summit, Upper East Bukshelv Cliff and Upper West Bukshelv Cliff are part of Bukshelv Cliff.

Bukshelv Cliff Summit is above Lower Central Bukshelv Cliff. "You are at the top of the world, it feels like. To your east and west the top of the cliff continues, and below you is the lower slopes of the cliff. You can see a large [Gem of Bukshelv Cliff Summit] on the ground." Bukshelv Cliff Summit has a text called Gem. The Gem of Bukshelv Cliff Summit is "chunk of rock"

Upper East Bukshelv Cliff is above Lower East Bukshelv Cliff and east of Bukshelv Cliff Summit. "You are at the top of the world, it feels like. To your west the top of the cliff continues, and below you is the lower slopes of the cliff."

Chunk of Rock is an object. Chunk of Rock is in Bukshelv Cliff Summit. Chunk of Rock is undescribed. Description is "A large chunk of rock. Maybe something is inside?"

Blue Magic Crystal is an object. Blue Magic Crystal is in Bukshelv Cliff Summit. Blue Magic Crystal is undescribed.

Instead of attacking Chunk of Rock:
	say "You hack open the rock, revealing a blue glowing chunk of crystal.";
	remove Chunk of Rock from play;
	now the Gem of Bukshelv Cliff Summit is "blue Magic Crystal".
		
Instead of opening Chunk of Rock:
	say "It won't open on it's own, maybe you need to break it open?"

Instead of taking chunk of rock:
	say "You don't need this rock, but maybe you need something inside it?"

Upper West Bukshelv Cliff is above Lower West Bukshelv Cliff and west of Bukshelv Cliff Summit. "You are at the top of the world, it feels like. To your east the top of the cliff continues, and below you is the lower slopes of the cliff."

Godzilla is a person. Godzilla is in Bukshelv Cliff Summit. "Godzilla is standing at the top, enjoying the view." Instead of talking to Godzilla:
	say "(Godzilla) Why do you need magic powers if you have a view like this?"


Section - Hills of Kauch

Hills of Kauch is east of South Plains of Car Pet. "You are on some navy blue hills and to your east is a view that seems to go on forever. To your west is the South Plains of Car Pet. [paragraph break] You are at the edge of a large rushing river, the Kauch River."

Kauch River is in Hills of Kauch. Kauch River is scenery. "The Kauch River stretches across, flowing quickly down towards the base of Bukshelv Cliff."

Bucket of River Water is an object. Bucket of River Water is in Hills of Kauch. Bucket of River Water is undescribed. Description is "A bucket filled to the brim with cold water from the Kauch River." Instead of using Bucket:
	If player is in Hills of Kauch:
		say "You fill the Bucket with water from the river.";
		remove Bucket from play;
		now player is carrying Bucket of River Water.


Chapter 5 - Maeve's Game

[You wake up in the morning and you are in your bedroom, but your magic powers are gone! Uh Oh...

Rainbow Dave's Journey
An Interactive Fiction by Liam Calahan
Release 1 / Serial number 220224 / Inform 7 build 6M62 (I6/v6.34 lib 6/12N) SD

Dave's Bedroom
You are in a small bedroom with a bed and a closet. To your south is the exit.

You can see a Closet (closed) here.

>open closet
You open the Closet.

>s
(first opening Dave's door)

Hallway Outside Dave's Room
You are in a hallway. To your north is a door labeled "Dave's room", Room 201, and to your east and west the hallway continues.

>w

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>n
(first opening Sylvia's door)
It seems to be locked.

You can hear snores from under the door.

>w

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>d
Hmm... maybe I should go talk to some people before I leave.

>look
Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>e

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>e

Hallway Outside Dave's Room
You are in a hallway. To your north is a door labeled "Dave's room", Room 201, and to your east and west the hallway continues.

>e

Hallway Outside Room 202
You are in a hallway. To your north is a door labeled "Swimmy's Room", Room 202, and to your west there is a hallway.

>n
(first opening Swimmy's door)

Swimmy's room
You are in a bedroom with ocean wallpaper, a bed, a couch, and a bunch of tools on top of a desk.

Swimmy is sitting on the couch reading a book.

>talk
(to Swimmy)
(Swimmy) Hi Dave, what is it?
(You) I lost my magic powers this morning.
(Swimmy) Oh no!
He pauses and looks something up on his computer.
(Swimmy) Apparently you can get them back, you just need to find 3 magic crystals! Maybe you can find them. Look around! And if you find them, make sure to bring them back to me.

>look
Swimmy's room
You are in a bedroom with ocean wallpaper, a bed, a couch, and a bunch of tools on top of a desk.

Swimmy is sitting on the couch reading a book.

>s

Hallway Outside Room 202
You are in a hallway. To your north is a door labeled "Swimmy's Room", Room 202, and to your west there is a hallway.

>w

Hallway Outside Dave's Room
You are in a hallway. To your north is a door labeled "Dave's room", Room 201, and to your east and west the hallway continues.

>w

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>w

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>d

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>s

Commons
You are in a nicely furnished room with a fireplace and some couches and books on the shelf. To your north is the elevator, and to your east is the lobby.

>take books
That's hardly portable.

>e

Lobby
You are in a entrance lobby. To your west is the commons, and to your south is the exit into the land of Lhivhingrum. For some reason, no one is at the check-in desk. There is a sign on the wall.

>look at sign
You can't see any such thing.

>read sign
You can't see any such thing.

>w

Commons
You are in a nicely furnished room with a fireplace and some couches and books on the shelf. To your north is the elevator, and to your east is the lobby.

>n

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>e

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>n
(first opening BearBear's door)

BearBear's room
You are in a bedroom with honey wallpaper, a bed, a couch, a TV, and a bunch of books on top of a shelf.

Bear Bear is sitting on the couch watching basketball.

>talk
(to BearBear)
(Bear Bear) What is it, Dave?
(You) Oh, I lost my powers this morning...
(Bear Bear) Hmmm... I have something that might help you, but could you find me a honey cake from the kitchen first?
(You) Ok, I will bring one back here.

Bear Bear yells at the TV.

>e
You can't go that way.

>s

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>e

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>n
(first opening Little Giraffe's door)

Little Giraffe's room
You are in a bedroom with grassy wallpaper, a bed, a couch, and a desk.

Little Giraffe is sitting on the couch watching TV.

>talk
(to Little Giraffe)
(Little Giraffe) What is it, Dave? Did you bring me candy?
(You) No, but I lost my powers this morning...
(Little Giraffe) Maybe I have something that will help. If you find my pool floatie I will give you one of my special toys!
(You) Ok, I will find it!.

>look at TV
Little Giraffe is watching Muffy the Stuffie. This episode is about Muffy trying to blow up the car so she doesn't have to go to the vet.

 A loud explosion comes from the TV. 
>s

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>e

Hallway Outside Room 102
You are in a hallway. To your north is a door labeled "Big Giraffe's Room", Room 102, and to your east and west there a hallway.

>n
(first opening Big Giraffe's door)

Big Giraffe's room
You are in a bedroom with grassy wallpaper, a bed, a couch, and photos on the wall.

Big Giraffe is sewing something.

>talk
(to Big Giraffe)
(Big Giraffe) Hi Dave.
(You) I lost my powers this morning!
(Big Giraffe) Oh no! Sorry, but there is not much I can do. Try talking to Little Giraffe.
(You) I already did!
(Big Giraffe) Oh, then maybe she has something for you. Good luck Dave!

>s

Hallway Outside Room 102
You are in a hallway. To your north is a door labeled "Big Giraffe's Room", Room 102, and to your east and west there a hallway.

>e

Hallway Outside Room 103
You are in a hallway. To your north is a door labeled "Kelp and Seaweed's Room", Room 103, and to your west there a hallway.

>n
(first opening Kelpweed's door)

Kelpweed's room
You are in a bedroom with ocean wallpaper, two beds, a couch, and a desk.

Kelp is reading on the couch.

>talk
(to Kelp)
(Kelp) Hi Dave.
(You) I lost my powers this morning! I need magic crystals!
(Kelp) Oh no! Well, you're in luck, because I have a way to make magic crystals! The only problem is that I need river water, and I lost my bucket. Also, I forgot where the river is.
(You) I'll get some river water for you!
(Kelp) I will make a crystal for you then!

>s

Hallway Outside Room 103
You are in a hallway. To your north is a door labeled "Kelp and Seaweed's Room", Room 103, and to your west there a hallway.

>w

Hallway Outside Room 102
You are in a hallway. To your north is a door labeled "Big Giraffe's Room", Room 102, and to your east and west there a hallway.

>w

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>w

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>w

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>u

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>u

Elevator Floor 3
You are in an elevator room. The elevator can go down but not up. To your south is a door labeled "Pool", and to your east is a door labeled "Dining Room and Rooms".

>s

Outdoor Balcony
A large balcony. To the east is the Dining Room, and to the North is the Elevator.

You can see a Pool and Bucket here.

>take bucket
Taken.

>look at pool
The sun reflects off the water, and you can see something floating on the water. It appears to be a giraffe floatie.

>take floatie
Taken.

>e

Dining Room
You are in a large area with a bunch of round tables. To your north is a hallway, and to your west is a door to the pool.

Orca is sitting at one of the tables.

Fladibearius is sitting at another table.

>talk
Whom do you want to talk to?

>orca
(Orca) Swimmy told me what happened, Dave.
(You) Can you help me?
(Orca) What do you need?
(You) Um, nothing.
(Orca) Well, have some sushi!
You eat sushi with Orca.
(Orca) Bye Dave!

>talk
Whom do you want to talk to?

>fladibearius
(Fladibearius) Hi Dave, I heard about what happened. I can't really help you, sorry!
(You) That's fine Fladibearius. What are you eating?
(Fladibearius) This is honey cake. Do you want any?
(Yes or No)>yes
(Fladibearius) Here you are!

>i
You are carrying:
  Honey Cake
  Giraffe Floatie
  Bucket

>n

Hallway Outside Room 300
You are in a hallway. To your north is a door labeled "Tiggery's Room", Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room.

>n
(first opening Tiggery's door)

Tiggery's Room
You are in a bedroom with orange striped wallpaper, a bed, a couch, a desk, and tools hanging on the wall.

Tiggery is making something with his tools.

>talk
(to Tiggery)
(Tiggery) What's going on, Dave?
(You) I lost my powers this morning!
(Tiggery) That's not good! Swimmy probably already told you, but you need apparently 3 magic crystals.
(You) I know!
(Tiggery) Anyway, I don't have anything to help you with, sorry. If you could bring me some sushi that would be good though!

>s

Hallway Outside Room 300
You are in a hallway. To your north is a door labeled "Tiggery's Room", Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room.

>s

Dining Room
You are in a large area with a bunch of round tables. To your north is a hallway, and to your west is a door to the pool.

Orca is sitting at one of the tables.

Fladibearius is sitting at another table.

>talk to orca
(Orca) Hi again! Do you need anything?
(You) Could I have some sushi to take to Tiggery?
(Orca) Sure! Here you go! Bye!

>save
Save failed.

>i
You are carrying:
  Sushi
  Honey Cake
  Giraffe Floatie
  Bucket

>n

Hallway Outside Room 300
You are in a hallway. To your north is a door labeled "Tiggery's Room", Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room.

>n

Tiggery's Room
You are in a bedroom with orange striped wallpaper, a bed, a couch, a desk, and tools hanging on the wall.

Tiggery is making something with his tools.

>give sushi
(to Tiggery)
(Tiggery) Oh wow! Thank you!
(Tiggery) I just realized, I can give you this Key. I don't know why you would want it, but here you go!

>i
You are carrying:
  Sylvia's Key
  Honey Cake
  Giraffe Floatie
  Bucket

>s

Hallway Outside Room 300
You are in a hallway. To your north is a door labeled "Tiggery's Room", Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room.

>e

Hallway Outside Room 301
You are in a hallway. To your north is a door labeled "Orca's Room", Room 301, and to your east and west there is hallway.

>n
(first opening Orca's door)
It seems to be locked.

>e

Hallway Outside Room 302
You are in a hallway. To your north is a door labeled "Fladibearius' Room", Room 302, and to your west there is a hallway.

>n
(first opening Fladibearius' door)
It seems to be locked.

>w

Hallway Outside Room 301
You are in a hallway. To your north is a door labeled "Orca's Room", Room 301, and to your east and west there is hallway.

>w

Hallway Outside Room 300
You are in a hallway. To your north is a door labeled "Tiggery's Room", Room 300, and to your east there is a hallway, to your west is an elevator, and to your south is the dining room.

>w

Elevator Floor 3
You are in an elevator room. The elevator can go down but not up. To your south is a door labeled "Pool", and to your east is a door labeled "Dining Room and Rooms".

>d

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>e

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>n
(first opening Sylvia's door)
It seems to be locked.

You can hear snores from under the door.

>unlock door
What do you want to unlock Sylvia's door with?

>key
You unlock Sylvia's door.

You can hear snores from under the door.

>n
(first opening Sylvia's door)

Sylvia's Room
You are in a pink bedroom with a bed and a closet, and an oven that smells like chocolate cake. To your south is the exit.

Sylvia is snoring loudly on the bed.

>wake sylvia up
Sylvia wakes up.
(Sylvia) What is going on???
(You) I lost all of my powers! Do you have a magic crystal?
(Sylvia) Yes, but I will give you one only if you bring me chocolate.

Sylvia fell asleep again.

>e
You can't go that way.

>s

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>w

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>d

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>e

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>n

BearBear's room
You are in a bedroom with honey wallpaper, a bed, a couch, a TV, and a bunch of books on top of a shelf.

Bear Bear is sitting on the couch watching basketball.

>give cake
(to BearBear)
(Bear Bear) Oh wow! Thank you!
(Bear Bear) Thanks! Hmm, what can I give you? Oh! I have some M&Ms. Here you go!

>i
You are carrying:
  Chocolate Candies
  Sylvia's Key
  Giraffe Floatie
  Bucket

>s

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>e

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>n

Little Giraffe's room
You are in a bedroom with grassy wallpaper, a bed, a couch, and a desk.

Little Giraffe is sitting on the couch watching TV.

 Little Giraffe cheers at something on the TV. 
>give floatie
(to Little Giraffe)
(Little Giraffe) Thanks! Where was it?
(You) It was at the pool, obviously.
(Little Giraffe) Oh. Well, you can have this pogo stick!

>i
You are carrying:
  Pogo Stick
  Chocolate Candies
  Sylvia's Key
  Bucket

 A loud explosion comes from the TV. 
>s

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>w

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>w

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>d
You can't go that way.

>e

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>w

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>s

Commons
You are in a nicely furnished room with a fireplace and some couches and books on the shelf. To your north is the elevator, and to your east is the lobby.

>e

Lobby
You are in a entrance lobby. To your west is the commons, and to your south is the exit into the land of Lhivhingrum. For some reason, no one is at the check-in desk. There is a sign on the wall.

>s

North Plains of Car Pet
You are in a desolate wasteland, and the ground is striped with red and white. To your south the plains continue, to your west is Mount Pyanno, and to your north is the entrance to SPICH.

>w

Lower Mount Pyanno
You are on the lower base of a high mountain. The mountain is made of some sort of black rock. The Mountain continues to your west.

>w

Upper Mount Pyanno
You are near the peak of Mount Pyanno. It is too steep to fully summit, though.

>e

Lower Mount Pyanno
You are on the lower base of a high mountain. The mountain is made of some sort of black rock. The Mountain continues to your west.

>e

North Plains of Car Pet
You are in a desolate wasteland, and the ground is striped with red and white. To your south the plains continue, to your west is Mount Pyanno, and to your north is the entrance to SPICH.

>s

South Plains of Car Pet
You are in a desolate wasteland, and the ground is striped with red and white. To your north the plains continue, to your east is the Hills of Kauch, where you can see the Kauch River, and to your south is the enourmous Bukshelv Cliff.

>e

Hills of Kauch
You are on some navy blue hills and to your east is a view that seems to go on forever. To your west is the South Plains of Car Pet. 

 You are at the edge of a large rushing river, the Kauch River.

>use bucket
(Bucket)
You fill the Bucket with water from the river.

>w

South Plains of Car Pet
You are in a desolate wasteland, and the ground is striped with red and white. To your north the plains continue, to your east is the Hills of Kauch, where you can see the Kauch River, and to your south is the enourmous Bukshelv Cliff.

>s

Lower Central Bukshelv Cliff
You are at the base of the most enormous cliff imaginable. It is so steep, how on earth can you get up there? The base of the cliff stretches on to your east and west, to your south is the Plains of Car Pet.

>up
BOING! you bounce up the Cliff with your pogo stick.

Bukshelv Cliff Summit
You are at the top of the world, it feels like. To your east and west the top of the cliff continues, and below you is the lower slopes of the cliff. You can see a large chunk of rock on the ground.

Godzilla is standing at the top, enjoying the view.

>talk
(to Godzilla)
(Godzilla) Why do you need magic powers if you have a view like this?

>look at rock
A large chunk of rock. Maybe something is inside?

>break rock
You hack open the rock, revealing a blue glowing chunk of crystal.

>take
(Godzilla)
I don't suppose Godzilla would care for that.

>take crystal
Taken.

>i
You are carrying:
  Blue Magic Crystal
  Bucket of River Water
  Pogo Stick
  Chocolate Candies
  Sylvia's Key

>d

Lower Central Bukshelv Cliff
You are at the base of the most enormous cliff imaginable. It is so steep, how on earth can you get up there? The base of the cliff stretches on to your east and west, to your south is the Plains of Car Pet.

>n

South Plains of Car Pet
You are in a desolate wasteland, and the ground is striped with red and white. To your north the plains continue, to your east is the Hills of Kauch, where you can see the Kauch River, and to your south is the enourmous Bukshelv Cliff.

>n

North Plains of Car Pet
You are in a desolate wasteland, and the ground is striped with red and white. To your south the plains continue, to your west is Mount Pyanno, and to your north is the entrance to SPICH.

>n

Lobby
You are in a entrance lobby. To your west is the commons, and to your south is the exit into the land of Lhivhingrum. For some reason, no one is at the check-in desk. There is a sign on the wall.

>n
You can't go that way.

>w

Commons
You are in a nicely furnished room with a fireplace and some couches and books on the shelf. To your north is the elevator, and to your east is the lobby.

>n

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>e

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>e

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>e

Hallway Outside Room 102
You are in a hallway. To your north is a door labeled "Big Giraffe's Room", Room 102, and to your east and west there a hallway.

>e

Hallway Outside Room 103
You are in a hallway. To your north is a door labeled "Kelp and Seaweed's Room", Room 103, and to your west there a hallway.

>n

Kelpweed's room
You are in a bedroom with ocean wallpaper, two beds, a couch, and a desk.

Kelp is reading on the couch.

>give bucket
(to Kelp)
(Kelp) Oh, you found it! Nice.
Kelp puts it in a pot with a bunch of other ingredients, and it bubbles and pops.
(Kelp) Here you go!

>i
You are carrying:
  Green Magic Crystal
  Blue Magic Crystal
  Pogo Stick
  Chocolate Candies
  Sylvia's Key

>s

Hallway Outside Room 103
You are in a hallway. To your north is a door labeled "Kelp and Seaweed's Room", Room 103, and to your west there a hallway.

>w

Hallway Outside Room 102
You are in a hallway. To your north is a door labeled "Big Giraffe's Room", Room 102, and to your east and west there a hallway.

>w

Hallway Outside Room 101
You are in a hallway. To your north is a door labeled "Little Giraffe's Room", Room 101, and to your east and west there is more hallway.

>w

Hallway Outside Room 100
You are in a hallway. To your north is a door labeled "Bear Bear's Room", Room 100, and to your east there is a hallway, and to your west there is an elevator.

>w

Elevator Floor 1
You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your south is a door labeled "Commons".

>u

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>e

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>n

Sylvia's Room
You are in a pink bedroom with a bed and a closet, and an oven that smells like chocolate cake. To your south is the exit.

Sylvia is yet again asleep.

>give candys
You can't see any such thing.

>give candies
(to Sylvia)
(Sylvia) Hmmmmmm? Oh, CHOCOLATE!!!!!!
(Sylvia) Ok, I guess I should give you your magic crystal now.

>i
You are carrying:
  Pink Magic Crystal
  Green Magic Crystal
  Blue Magic Crystal
  Pogo Stick
  Sylvia's Key

>s

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>w

Elevator Floor 2
You are in an elevator room. The elevator can go up or down. To your east is a hallway.

>e

Hallway Outside Room 200
You are in a hallway. To your north is a door labeled "Sylvia's room", Room 200, and to your east there is a hallway, and to your west there is an elevator.

You can hear snores from under the door.

>e

Hallway Outside Dave's Room
You are in a hallway. To your north is a door labeled "Dave's room", Room 201, and to your east and west the hallway continues.

>
I beg your pardon?

>e

Hallway Outside Room 202
You are in a hallway. To your north is a door labeled "Swimmy's Room", Room 202, and to your west there is a hallway.

>n

Swimmy's room
You are in a bedroom with ocean wallpaper, a bed, a couch, and a bunch of tools on top of a desk.

Swimmy is sitting on the couch reading a book.

>talk
(to Swimmy)
You did it Dave! Now we can get your powers back!
Swimmy places all the crystals onto your horn.
Suddenly, you feel normal again, like if your foot was asleep and then came back. 

 You go out onto the balcony and celebrate by launching fireworks from your horn.]

