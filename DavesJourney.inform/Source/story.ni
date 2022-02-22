"Rainbow Dave's Journey" by Liam Calahan

[rules]

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

A person has a text called Spoken To.

[code]
When play begins, say "You wake up in the morning and you are in your bedroom, but your magic powers are gone! Uh Oh..."

Section - Dave

Dave's Bedroom is a room. "You are in a small bedroom with a bed and a closet. To your south is the exit."

Hallway Outside Dave's Room is a room. Hallway Outside Dave's Room is south of Dave's Bedroom. "You are in a hallway. To your north is a door labeled 'Dave's room', Room 201, and to your east and west the hallway continues."

Section - Sylvia

Hallway Outside Room 200 is a room. Hallway Outside Room 200 is west of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Sylvia's room', Room 200, and to your east there is a hallway, and to your west there is an elevator."

Sylvia's Room is a room. Sylvia's Room is north of Hallway Outside Room 200. "You are in a pink bedroom with a bed and a closet, and an oven that smells like chocolate cake. To your south is the exit."

Sylvia is in Sylvia's Room. Sylvia is a person. "Sylvia is snoring loudly on the bed." Description is "Upon closer examination, Sylvia seems to be dreaming about chocolate cake."

Section - Swimmy

Hallway Outside Room 202 is a room. Hallway Outside Room 202 is east of Hallway Outside Dave's Room. "You are in a hallway. To your north is a door labeled 'Swimmy's Room', Room 202, and to your west there is a hallway."

Swimmy's Room is a room. Swimmy's Room is north of Hallway Outside Room 202. "You are in a bedroom with ocean wallpaper, a bed, a couch, and a bunch of tools on top of a desk."

Swimmy is in Swimmy's Room. Swimmy is a person. the Spoken To of Swimmy is "no". "Swimmy is sitting on the couch reading a book." Instead of examining Swimmy, say "(Swimmy) Hi Dave!"

Instead of talking to Swimmy:
	say "(Swimmy) Hi Dave, what is it?";
	say "(You) I lost my magic powers this morning.";
	say "(Swimmy) Oh no!";
	say "Swimmy pauses and looks something up on his computer.";
	say "(Swimmy) Apparently you can get them back, you just need to find 4 magic crystals! Maybe you can find them. Look around!";
	Now the Spoken To of Swimmy is "yes"
	
Instead of talking to Swimmy while the Spoken To of Swimmy is "yes":
	say "(Swimmy) Good luck Dave!"