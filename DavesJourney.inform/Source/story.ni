"Rainbow Dave's Journey" by Liam Calahan

[rules]
Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

A person has a text called Spoken To. The Spoken To of a person is usually "no".

[code]
When play begins, say "You wake up in the morning and you are in your bedroom, but your magic powers are gone! Uh Oh..."

Getting Acquainted is a scene. Getting Acquainted begins when play begins. Getting Acquainted ends when talking to Swimmy.

Section - Dave


Dave's Bedroom is a room. "You are in a small bedroom with a bed and a closet. To your south is the exit."

Hallway Outside Dave's Room is a room. Hallway Outside Dave's Room is south of Dave's door. "You are in a hallway. To your north is a door labeled 'Dave's room', Room 201, and to your east and west the hallway continues."

The Bed is scenery. The Bed is in Dave's Bedroom. Description is "A purple bed with pictures of mangoes. Not much else to see."

The Closet is an openable container. The Closet is in Dave's Bedroom. Description is "A dusty brown closet. Not much to see."

Dave's door is south of Dave's Bedroom. Dave's door is a door. Dave's door is scenery. Dave's door is lockable and unlocked.

Section - Sylvia

Hallway Outside Room 200 is a room. Hallway Outside Room 200 is west of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Sylvia's room', Room 200, and to your east there is a hallway, and to your west there is an elevator." 

Sylvia's Room is a room. Sylvia's Room is north of Sylvia's door. "You are in a pink bedroom with a bed and a closet, and an oven that smells like chocolate cake. To your south is the exit."

Sylvia is in Sylvia's Room. Sylvia is a person. "Sylvia is snoring loudly on the bed." Description is "Upon closer examination, Sylvia seems to be dreaming about chocolate cake." Instead of talking to sylvia, say "She is fast asleep, dreaming about fancy chocolate and dancing."

Sylvia's door is north of Hallway Outside Room 200. Sylvia's door is a door. Sylvia's door is scenery. Sylvia's door is lockable and locked.

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

Elevator Floor 1 is a room. Elevator Floor 1 is below Elevator Floor 2. "You are in an elevator room. The elevator can go up but not down. To your east is a hallway, and to your west is a door labeled 'Commons'."

Elevator Floor 3 is a room. Elevator Floor 3 is above Elevator Floor 2. "You are in an elevator room. The elevator can go down but not up. To your west is a door labeled 'Kitchen', and to your east is a door labeled 'Dining Room'."

Section - Bear Bear

Hallway Outside Room 100 is a room. Hallway Outside Room 100 is east of Elevator Floor 1. "You are in a hallway. To your north is a door labeled 'Bear Bear's Room', Room 100, and to your east there is a hallway, and to your west there is an elevator."

BearBear's Room is a room. BearBear's Room is north of BearBear's door. "You are in a bedroom with honey wallpaper, a bed, a couch, a TV, and a bunch of books on top of a shelf."

BearBear is in BearBear's Room. BearBear is a person. "Bear Bear is sitting on the couch watching basketball." Instead of examining BearBear, say "(Bear Bear) Hi Dave!" Instead of talking to BearBear:
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
		
BearBear's door is north of Hallway Outside Room 100. BearBear's door is a door. BearBear's door is scenery. BearBear's door is lockable and unlocked.

Section - Little Giraffe

Hallway Outside Room 101 is a room. Hallway Outside Room 101 is east of Hallway Outside Room 100. "You are in a hallway. To your north is a door labeled 'Little Giraffe's Room', Room 101, and to your east and west there is more hallway."

Little Giraffe's Room is a room. Little Giraffe's Room is north of Little Giraffe's door. "You are in a bedroom with grassy wallpaper, a bed, a couch, a desk, and a bunch of books on top of a shelf."

Little Giraffe is in Little Giraffe's Room. Little Giraffe is a person. "Little Giraffe is sitting on the couch watching TV." Instead of examining Little Giraffe, say "(Little Giraffe) Hi Dave!" Instead of talking to Little Giraffe:
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
		
Little Giraffe's door is north of Hallway Outside Room 101. Little Giraffe's door is a door. Little Giraffe's door is scenery. Little Giraffe's door is lockable and unlocked.
