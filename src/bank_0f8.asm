SECTION "ROM Bank $0f8", ROMX[$4000], BANK[$f8]

    db "CHRIS: ", $01
    db "JILL: ", $01
    db "WESKER: ", $01
    db "REBECCA: ", $01
    db "BARRY: ", $01
    db "TYRANT: ", $01
    db "ENRICO: ", $01
    db "RICHARD: ", $01
    db "BRAD: ", $01
    db "????: ", $01
    
IntroSceneChris:: ; 0x4054
    db "I don't", $00, "know what happened?", $01
    db "..Barry,", $00, "where is Barry?", $01
    db "Well, I'm", $00, "sorry but he's", $00, "probably..", $01
    db "No!..", $01
    db "What is", $00, "that!?", $01
    db "I'll go", $00, "and check.", $01
    db "...OK,", $00, "Jill and I will stay", $00, "in the hall in case", $00, "of an emergency.", $01
    db "Chris!", $01
    db "Take care!", $01

    db $00, "Investigate if you", $00, "hear any gunfire.", $01
    db $00, "Wesker, Jill..?", $01
    db "What", $00, "happened to Jill", $00, "and Wesker?", $01
    db "Whaao!", $00, "What is it?", $01
    db "What?", $00, "Oh! Oh, no! Sorry!", $00, "I didn't mean to", $00, "do that!..", $01
    db "You must", $00, "be from the Bravo", $00, "Team..", $01
    db $00, "Yes. I'm Rebecca!", $00, "Rebecca Chambers!", $01
    db "I'm a", $00, "newcomer. I just", $00, "joined the STARS", $00, "Bravo Team last", $00, $04, "month! Well, I'm", $00, $04, "really sorry. Are", $00, $04, "you alright?", $01
    db "Yes.", $00, "I'm Chris Redfield", $00, "from the Alpha Team.", $01
    db "Are you", $00, "the only person here", $00, "from the Bravo Team?", $01
    db "Well,", $00, "because the", $00, "helicopter made a", $00, "forced landing..I", $00, $04, "just ran into this", $00, $04, "house anyway,", $00, $04, "but..I..uh?", $01
    db "I see.", $00, "There is nothing", $00, "else you could have", $00, "done. Anyway, it is", $00, $04, "good that you are", $00, $04, "here.", $01
    db $00, "Yes. Sir..", $01
    db $00, "But, it's strange..", $01
    db $00, "I serviced the", $00, "helicopter recently,", $00, "but something went", $00, $04, "wrong with the", $00, $04, "engine. It was such", $00, $04, "a short flight..", $01
    db $00, "I wonder", $00, "if everybody is..", $01
    db "Well, what", $00, "should I do now?", $01
    db "If you go", $00, "out to search for", $00, "the other members,", $00, "are you letting me", $00, $04, "come with you?", $01
    db "It's", $00, "pretty dangerous", $00, "outside. Let me take", $00, "care of it.!", $01
    db $00, "I understand. For", $00, "now, I'll wait here,", $00, "since there are a", $00, $04, "lot of chemicals in", $00, $04, "this room and they", $00, $04
    db "might be useful.", $01
    db "Well,", $00, "I'll look over the", $00, "chemicals.", $01
    db $00, "It's me Chris.", $01
    db "Is that", $00, "you, Rebecca?", $01
    db $00, "Ah, it's the", $00, "'Moonlight Sonata'.", $01
    db $00, "Can you play?", $01
    db "Wait,", $00, "what is that?", $01
    db $00, "My interpretation", $00, "is off a little.", $01
    db "Chris,", $00, "may I practice", $00, "for a while?", $01
    db "See,", $00, "just relax and", $00, "play.", $01
    db $00, "All right.", $01
    db $00, "Chris. Chris!", $01
    db $00, "You like it?", $01
    db $00, "Oh, that was great!", $01
    db $00, "What is that!?", $01
    db "Is that", $00, "you, Rebecca?", $01
    db "Chris.", $00, "Are you alright?", $01
    db "Yeah.", $00, "What happened?", $01
    db "You were", $00, "bitten by a", $00, "poisonous snake.", $00, "Are you OK?", $01
    db "Aouh!", $00, "My head is", $00, "killing me.", $01
    db "I think", $00, "you'll be alright", $00, "because I gave you", $00, "a shot, but please", $00, $04, "stay out of trouble.", $01
    db "You saved", $00, "my life. I owe", $00, "you one.", $01
    
IntroSceneJill:: ; 0x47a9
    db $00, "What is this..?", $01 ; Barry
    db "Wow!", $00, "What a mansion", $01 ; Wesker
    db $00, "Captain Wesker,", $00, "Where's Chris?", $01 ; Jill
    db "Stop it!", $00, "Don't open that", $00, "door!", $01 ; Wesker
    db $00, "But Chris is....!", $01 ; Jill
    db $00, "What is it?", $01 ; Barry
    db $00, "Maybe it's Chris?", $01 ; Wesker
    db "Now Jill,", $00, "can you go?", $01 ; Wesker 
    db "I'm going", $00, "with you! Chris is", $00, "our old partner", $00, "you know.", $01 ; Barry
    db "OK! Let", $00, "me handle this.", $01 ; Wesker
    db $00, "Stay Alert.", $01 ; Wesker
    
DiningHallEnter:: ; 0x48b2
    db $00, "A dining room....", $01
    
DiningHallFireplace:: ; 0x48c5
    db "What?", $00, "What is this...?", $01
    db $00, "What is it?", $01
    db "Blood...", $00, "Jill, see if you can", $00, "find any other", $00, "clues. I'll be", $00, $04, "examining this.", $01
    db "Hope this", $00, "is not Chris's", $00, "blood.", $01
    
JillEncountersFirstZombie:: ; 0x4956
    db $00, "Barry....!", $01
    db $00, "What is it!?", $01
    db "Watch out!", $00, "It's a monster!", $01
    db "Let me", $00, "take care of this!", $01
    db $00, "What is it?", $01
    db "Kenneth", $00, "was killed too.", $00, "Maybe by this", $00, "creature.", $01
    db "Anyway", $00, "let's report this", $00, "to Wesker.", $01
    
JillReturnsEntrance:: ; 0x4a06
    db "Wesker!", $01
    db "Help me", $00, "look for him Jill,", $00, "and don't leave this", $00, "hall for the time", $00, $04, "being!", $01
    db $00, "Find anything Jill?", $01
    db "Nothing.", $01
    db "What is", $00, "this all about?", $00, "I can't figure it", $00, "out at all.", $01
    db $00, "Beats me, too.", $01
    db "Now it's", $00, "Wesker's time to", $00, "disappear....I don't", $00, "know what's going", $00, $04, "on!", $01
    db "Well,", $00, "it can't be helped.", $00, "Let's search for him", $00, "separately. I'll", $00, $04, "check the dining", $00, $04, "room again.", $01
    db "OK! I'll", $00, "try the door on the", $00, "opposite side.", $01
    db "This", $00, "mansion is gigantic!", $00, "We could get into", $00, "trouble if we get", $00, $04, "lost. We should", $00, $04, "start from the first", $00, $04, "floor, OK? And..", $01
    db "Jill,", $00, "here's a Lock Pick.", $00, "It might be handy if", $00, "you, the master of", $00, $04, "unlocking, take it", $00, $04, "with you.", $01
    db "Thanks.", $00, "Maybe I'll need it.", $01
    db "No. I'll", $00, "take care of that", $00, "direction. I told", $00, "you to start from", $00, $04, "the other side,", $00, $04, "Jill!", $01
    db "Listen,", $00, "if something", $00, "happens, let's meet", $00, "up in this hall.", $01
    db "This time", $00, "I'll be there.", $01

    db "Hey,", $00, "what's going on?", $01
    db "Jill?", $00, "Is that you Jill?", $00, "What happened!?", $01
    db "Barry!?", $00, "Help me, please!", $00, "The door won't", $00, "open. Quick!", $01
    db "Stay away", $00, "from the door Jill.", $00, "I'm going to kick", $00, "this door down!", $01
    db $00, "Hurry! This way!", $01
    db $00, "Oh, Barry.", $01
    db "That was", $00, "close! You were", $00, "almost a Jill", $00, "sandwich!", $01
    db "You are", $00, "right Barry. Thanks", $00, "for saving my life!", $01
    db "But Barry.", $00, "Didn't you say you", $00, "were going back to", $00, "the dining room to", $00, $04, "do some research?", $00, $04, "Why on earth are", $00, $04, "you here?", $01
    db "Uh. I just", $00, "had something I", $00, "wanted to check.", $01
    db "Now, let's", $00, "get back to", $00, "searching for the", $00, "lost Captain and", $00, $04, "Chris, shall we?", $01
    db $00, "Thank you, Barry!", $01
    db "Yah, yah!", $01
    db "Barry!", $01
    db "Jill!", $00, "What's going on?", $00, "Any clues?", $01
    db "No,", $00, "but ...Something's", $00, "wrong with this", $00, " house!", $01
    db "Whoa!", $00, "This hall is", $00, "dangerous. Maybe", $00, "it's better to", $00, $04, "secure our escape", $00, $04, "route first.", $01
    db "There must", $00, "be a back door", $00, "somewhere....Let's", $00, "try to find it", $00, $04, "first, shall we?", $01
    db "Ok, let's", $00, "separate again.", $01
    db "Just a", $00, "moment. I've found", $00, "something.", $01
    db $00, "What is it!?", $01
    db "It's a", $00, "weapon. It's really", $00, "powerful especially", $00, "against living", $00, $04, "things. Better take", $00, $04, "it with you.", $01
    db "But how", $00, "about you, Barry?", $01
    db $00, "I have this", $01
    db "Thank you.", $00, "I'll take this then.", $01
    db "Jill!", $01
    db "Don't", $00, "scare me!", $01
    db "That's", $00, "what I was going to", $00, "say. Aren't you", $00, "supposed to be going", $00, $04, "over the first floor", $00, $04, "Barry?", $01
    db "Yah,", $00, "you're right. But", $00, "just take a look", $00, "at this.", $01
    db $00, "It's Forest....", $00, "Oh my God", $01
    db $00, "It's awful....", $01
    db "I'm going", $00, "to find out what", $00, "caused Forest's", $00, "death. It looks", $00, $04, "like a crow or", $00, $04, "something killed", $00, $04, "him. Can you look", $00, $04, "around the first", $00, $04, "floor Jill.", $01
    db "OK!", $01
    db "Hey, Jill.", $00, "This must have been", $00, "Forest's. You don't", $00, "have a weapon. Take", $00, $04
    db "this with you!", $01
    db "Is that", $00, "you Jill...?", $01
    db "What's", $00, "going on? How come", $00, "you look so scared?", $01
    db $00, "Look at this.", $01
    db "What do", $00, "you think of it...?", $01
    db "I've been", $00, "thinking something", $00, "is wrong with this", $00, "house...", $01
    db "Right.", $01
    db "Hey,", $00, "what is this,", $00, "there's a page", $00, "missing!", $01
    db "Yeah.", $00, "I thought about", $00, "that too. Perhaps", $00, "that was the most", $00, $04, "important part...", $01
    db "Richard!", $00, "What happened?", $01
    db "Oh Jill!", $00, "This house is", $00, "dangerous.. There", $00, "are terrible", $00, $04, "demons..! Ouch!", $01
    db "You're", $00, "wounded! What kind", $00, "of demon attacked", $00, "you?", $01
    db "It was a", $00, "huge snake..and also", $00, "poisonous!", $01
    db "Poisonous?", $00, "Oh no. Richard,", $00, "hold on!", $01
    db "There is", $00, "serum!.. Oh no. I", $00, "should have brought", $00, "some with me.", $01
    db $00, "No problem! I'll", $00, "go and get it!", $01
    db "Thanks..", $01
    db "Here's the", $00, "serum! Richard,", $00, "hold on! I'll give", $00, "you a shot now!", $01
    db "Jill,", $00, "here's my radio,", $00, "you should keep it.", $00, "I'm..!", $01
    db $00, "No! Richard!", $01
    db "Jill..", $00, "be careful..!", $00, "U..u..uh..", $01
    db "Am I", $00, "poisoned? Damn it...", $00, "give me serum..", $01
    db "This is", $00, "Brad. STARS Alpha", $00, "team...Please", $00, "respond. What the", $00, $04, "hell? Is nobody out", $00, $04, "there?", $01
    db "This is", $00, "Brad. STARS Alpha", $00, "Team, Bravo Team,", $00, "it doesn't matter!", $00, $04, "Anybody answer me!", $00, $04, "This is Brad.", $01
    db "This is", $00, "Brad. I know you", $00, "can't answer me!", $00, "But somehow,", $00, $04, "give me a sign.", $01
    db "Don't come", $00, "any closer, Chris.", $01
    db "Wait.", $00, "What happened?", $01
    db $00, "Double-crosser!", $01
    db "Don't!", $01
    db "Who is it!", $00, "....is somebody", $00, "there!?", $01
    db $00, "Hell, Umbrella....", $01
    db $00, "Double-crosser...?", $01
    db "What's he mean", $00, "by that?", $01
    db "Oh, Jill.", $00, "What good timing.", $00, "A moment ago I heard", $00, "someone's voice", $00, $04, "coming from this", $00, $04, "hole. Let's go", $00, $04, "together since it's", $00, $04, "dark and we can't", $00, $04, "see very well.", $01
    db "OK,", $00, "let's go!", $01
    db "OK, then", $00, "I'm going to cover", $00, "you. Let's hurry.", $01
    db "Hey, are", $00, "you alright? I can", $00, "go first if you", $00, "want me to...", $01
    db $00, "Is that Jill?", $01
    db $00, "Is that voice..", $00, "Enrico's?", $01
    db "Yeah.", $01
    db $00, "You're alive!", $01
    db $00, "Wait there!", $00, "Are you with", $00, "anybody, Jill?", $01
    db $00, "What? Oh, yes.", $01
    db "Enrico!!!", $01
    db "So, Barry", $00, "and Jill together...", $01
    db "Are you", $00, "alright Enrico?", $01
    db "The STARS", $00, "are doomed...Someone", $00, "is a traitor...", $01
    db "Everything", $00, "was plotted from the", $00, "start by Umbrella..", $01
    db "Arrgh!", $01
    db "Enrico!!!", $01
    db "Huh!", $00, "I'm really", $00, "embarrassed. I was", $00, "clumsy.", $01
    db "Brad!", $00, "This is Jill..", $01
    db $00, "Brad? Brad!..", $01
    db "This is", $00, "Jill. Brad! Oh..", $00, "It's broken!", $01
    db "Chris!?", $01
    db "It can't", $00, "be true. I've been", $00, "told a different", $00, "story.", $01
    db "Well,", $00, "there's nothing we", $00, "can do. The", $00, "situation has", $00, $04, "changed", $01
    db "But it's", $00, "not necessary for", $00, "you to destroy", $00, "STARS!", $01
    db "It's not", $00, "my intention, but", $00, "Umbrella's.", $00, "I can't help it.", $01
    db "What", $00, "about my family?", $01
    db "I will", $00, "guarantee their", $00, "safety.", $01
    db $00, "So everything", $00, "depends on me,", $00, "huh?", $01
    db "Hi, Jill.", $01
    db "Hi, Barry.", $00, "I heard someone", $00, "talking", $01
    db "So you", $00, "heard it. I think", $00, "I'm getting old.", $00, "It seems that", $00, $04, "talking to myself", $00, $04, "is becoming a habit.", $01
    db "Talking", $00, "to yourself? Barry,", $00, "something must have", $00, "happened to you, am", $00, $04, "I wrong? You sound", $00, $04, "strange.", $01
    db "Well,", $00, "it seems I made you", $00, "worry. But don't", $00, "worry. Maybe I have", $00, $04, "been a nervous wreck", $00, $04, "since too many", $00, $04, "strange things", $00, $04, "started happening.", $00, $04, "Well, I think I'll", $00, $04, "go out and get some", $00, $04, "fresh air for a", $00, $04
    db "change.", $01
    db "I told", $00, "you don't worry.", $00, "I'll just go and get", $00, "some fresh air and", $00, $04, "be eaten by a", $00, $04, "monster", $01
    db "Jill!", $00, "So you're safe!", $01
    db "That's", $00, "what I was going", $00, "to say! Where on", $00, "earth have you", $00, $04, "been? You", $00, $04, "disappeared from", $00, $04, "the hall all of", $00, $04, "a sudden.", $01
    db "I'm sorry.", $00, "But I had my", $00, "reasons to.", $00, "Perhaps you guys", $00, $04, "have met them, it", $00, $04
    db "was all I could do", $00, $04, "to protect myself", $00, $04, "against those", $00, $04, "strange creatures.", $01
    db "Is that", $00, "right? Anyway,", $00, "it's good to see", $00, "you are safe.", $01
    db "OK. I'll", $00, "go to the other", $00, "house and see if I", $00, "can find any clues.", $01
    db "Wesker!", $01
    db "Chris!", $00, "You're alive!", $01
    db $00, "My words exactly!", $01
    db $00, "Where's Jill?", $00, "Aren't you with", $00, "Jill?", $01
    db "I'm sorry.", $00, "We were attacked by", $00, "a strange monster..", $00, "I lost track of her", $00, $04, "while we were", $00, $04, "scouting around.", $00, $04, "I hope she's OK!", $01
    db "I see..", $00, "Well, it's not your", $00, "fault.. This place", $00, "is crazy! If we", $00, $04, "stay here, all of", $00, $04, "us will end up", $00, $04, "dead..What should", $00, $04, "we do Wesker?", $01
    db "We have", $00, "to complete this", $00, "mission. Whether we", $00, "escape or stay and", $00, $04, "look for Jill, we", $00, $04, "don't have many", $00, $04, "bullets left and we", $00, $04, "can't even protect", $00, $04
    db "ourselves. We're", $00, $04, "still in trouble.", $00, $04, "Chris, there are", $00, $04, "still a lot of", $00, $04, "locked rooms in", $00, $04, "that house. Check", $00, $04, "them one more time.", $00, $04
    db "There may be a", $00, $04
    db "place to hide", $00, $04, "safely. I'll look", $00, $04, "around the house a", $00, $04, "little more.", $01
    db $00, "Let's get going.", $01
    db "Rebecca!", $00, "You are safe!", $01
    db "I saw", $00, "you in the garden.", $00, "I've caught up with", $00, "you at last. But", $00, $04, "it's a strange", $00, $04, "place, isn't it.", $00, $04, "Is this a meeting", $00, $04
    db "room or something?", $01
    db "Chris!", $01
    db "Jill!", $01
    db "Chris.", $00, "Wesker, he is..", $01
    db "I know.", $00, "Shoot! It doesn't", $00, "open! Look, Jill.", $00, "Wait here.", $00, $04, "I'll save you!", $01
    db "OK,", $00, "I'll wait.", $01
    db "Well..", $00, "I'm glad you are", $00, "all right, don't go", $00, "alone!", $01
    db "Chris,", $00, "as my subordinate,", $00, "you have a", $00, "wonderful talent.", $01
    db "I would", $00, "never work for a", $00, "company like", $00, "Umbrella. And", $00, $04, "Wesker, you were", $00, $04, "formerly with", $00, $04, "Umbrella?", $01
    db "What do", $00, "you mean?", $01
    db "Since when", $00, "have you been an", $00, "Umbrella agent and", $00, "a traitor to", $00, $04, "the STARS.", $01
    db "Now.", $00, "You're wrong. I was", $00, "formerly with", $00, "Umbrella, yes. Now", $00, $04, "I'm prepared to face", $00, $04, "anything, even", $00, $04, "getting rid of you", $00, $04, "vigilante STARS.", $01
    db "Now the", $00, "worst possible", $00, "situation has", $00, "occurred! The", $00, $04, "failure of the", $00, $04, "experiment created a", $00, $04, "virus, a biological", $00, $04, "weapon - polluting", $00, $04, "the entire lab.", $01
    db "The worst happened", $00, "with the Tyrant", $00, "virus.. I lost some", $00, "of my STARS team", $00, $04, "members because", $00, $04, "of it.", $01
    db "You killed", $00, "them with your own", $00, "hands! Did you", $00, "kill Enrico?", $01
    db "Really!", $01
    db $00, "Yeah, Like this!", $01
    db "Rebecca!", $01
    db $00, "Don't move!", $00, "If you move,", $00, "I'll kill you!", $01
    db "Chris,", $00, "I have something", $00, "to show you.", $01
    db $00, "Now, walk!", $01
    db $00, "Is this..!?", $01
    db "That's", $00, "right, this is the", $00, "ultimate life form", $00, "- Tyrant!", $01
    db "Chris..", $01
    db "Stop it!", $01
    db "Wesker,", $00, "you're pitiful.", $01
    db "This is", $00, "your savior? You", $00, "say this 'Failure'", $00, "is your savior!?", $01
    db "You can", $00, "make sure yourselves", $00, "whether the Tyrant", $00, "is a failure or not!", $01
    db $00, "Go to hell!", $00, "Jill will join", $00, "you too!", $01
    db "What!?", $01
    db "Don't come", $00, "this way!", $00, "Oh! NO...!", $01
    db "You can't", $00, "kill me!", $01
    db "Wow!", $01
    db "Hah!", $00, "It seems like this", $00, "bulletproof jacket", $00, "is pretty strong.", $01
    db "I see.", $01
    db "How about", $00, "Captain Wesker?", $01
    db "He is", $00, "sleeping with the", $00, "'Ultimate Failure.'", $00, "Hurry up! I want to", $00, $04, "get out of here!", $01
    db $00, "Excuse me Chris!", $01
    db $00, "What? Rebecca.", $01
    db "I saw a", $00, "Research file in", $00, "this lab. It said", $00, "that a great deal", $00, $04, "of research on the", $00, $04, "Tyrant virus exists", $00, $04, "right here..We", $00, $04, "should blow this", $00, $04
    db "place up.", $01
    db "We are", $00, "already into it", $00, "over our heads.", $00, "Rebecca, can you", $00, $04, "do it?", $01
    db "Yes, Sir.", $00, "I'll set-off a", $00, "triggering system", $00, "for a bomb.", $01
    db "OK!", $00, "Now we have a", $00, "chance to escape!", $00, "See you outside", $00, $04, "the house!", $01
    db $00, "The triggering", $00, "system has now been", $00, "activated. All", $00, $04, "researchers and", $00, $04, "guards should take", $00, $04, "cover immediately.", $00, $04, "Unlock all routes", $00, $04, "for evacuation.", $00, $04, "There is ten minutes", $00, $04, "before explosion.", $01
    db "Jill!", $00, "Sorry for making", $00, "you wait.!", $01
    db "Chris..", $01
    db "I knew", $00, "I could trust you.", $01
    db "Let's go!", $00, "There's no need", $00, "to stay.", $01
    db "This is", $00, "Brad! I have a fuel", $00, "shortage..OK. This", $00, "is the last try! If", $00, $04, "somebody's alive,", $00, $04, "please send a sign!", $00, $04, "This is the last..", $01
    db "I made it!", $00, "I set-off the", $00, "triggering system", $00, "to the bomb!", $01
    db "Great!", $00, "Rebecca. Brad up in", $00, "the helicopter..", $01
    db "Look!", $00, "At all those", $00, "monsters!", $01
    db "Let me take care", $00, "of them!", $01
    db "Chris,", $00, "get in contact with", $00, "Brad right away!", $01
    db "OK!", $01
    db "But..", $01
    db "Chris,", $00, "use it! Destroy", $00, "the monsters", $00, "with it!", $01
    db "Jill!", $00, "You're here too!", $01
    db "Yes,", $00, "you're here too!", $01
    db "Look,", $00, "I lost my way.", $01
    db $00, "Let's get going.", $01
    db "Of course!", $00, "Damn it, we are in", $00, "quite a predicament,", $00, "Jill!", $01
    db "I know", $00, "Chris. Anyway I have", $00, "to open this room.", $01
    db "Oh, it", $00, "doesn't work. Well,", $00, "Chris, be sure to", $00, "come back and help", $00, $04, "you soon! So, will", $00, $04, "you just wait here!", $01
    db "Thanks.", $00, "I'll be here", $00, "waiting for you.", $01
    db "Wesker..", $01
    db "You did a", $00, "fine job. Barry.", $01
    db "Just as", $00, "I thought..", $01
    db "I think", $00, "you should stay away", $00, "from Barry, Jill. I", $00, "hear that his wife", $00, $04, "and two daughters", $00, $04, "will be in danger if", $00, $04, "he doesn't do", $00, $04, "everything I tell", $00, $04, "him to.", $01
    db "You are", $00, "so cruel..", $01
    db "Well you", $00, "don't have to worry", $00, "about anything", $00, "because you'll be", $00, $04, "free from this world", $00, $04, "very soon, Jill.", $01
    db "Why do", $00, "you have to destroy", $00, "STARS?", $01
    db "That's", $00, "Umbrella's", $00, "intention. This", $00, "laboratory has been", $00, $04, "engaging in", $00, $04, "dangerous", $00, $04, "experiments and", $00, $04, "recently an accident", $00, $04, "occurred. Anyway,", $00, $04, "this disaster cannot", $00, $04, "be made public.", $01
    db "Ah, that's", $00, "why having STARS", $00, "nosing about is so", $00, "inconvenient. So", $00, $04, "you're a slave of", $00, $04, "Umbrella now, along", $00, $04, "with these virus", $00, $04, "monsters.", $01
    db "I think", $00, "you misunderstand me", $00, "Jill. To me the", $00, "monsters you", $00, $04, "mentioned mean", $00, $04, "nothing. I'm going", $00, $04, "to burn all of them", $00, $04, "together with this", $00, $04
    db "entire laboratory. I", $00, $04, "must complete my", $00, $04, "mission as ordered", $00, $04, "by Umbrella.", $01
    db "Barry, go", $00, "up on the ground and", $00, "wait there!", $01
    db "Barry's", $00, "such a fool! He'll", $00, "be under the", $00, "control of Umbrella", $00, $04, "forever.", $01
    db "How come", $00, "both Umbrella and", $00, "you can intimidate", $00, "him by taking his", $00, $04, "family as hostages?", $01, $04
    db "Umbrella? Well I", $00, $04, "intimidated him but", $00, $04, "it had nothing to", $00, $04, "do with Umbrella. I", $00, $04, "just used him for", $00, $04, "my personal", $00, $04, "purposes, though it", $00, $04, "seems both you and", $00, $04, "Barry seem to think", $00, $04, "I was following", $00, $04, "orders from", $00, $04, "Umbrella.", $01
    db "Ah! So", $00, "you're planning", $00, "something, yes?", $01
    db "If you", $00, "succeeded in", $00, "developing the", $00, "world's most", $00, $04, "powerful biological", $00, $04, "weapon, what would", $00, $04, "you do? What if you", $00, $04, "were in charge?", $01
    db "You must", $00, "stop this now!", $01
    db "So, you're", $00, "going to steal all", $00, "this research?", $01
    db "Barry!", $01
    db $00, "Sorry, Jill..", $01
    db "Uh...I was", $00, "listening to what", $00, "you and Wesker were", $00, "talking about. I", $00, $04, "wish I realized it", $00, $04, "earlier. I thought", $00, $04, "it must have", $00, $04, "something to do with", $00, $04, "Umbrella you know.", $01
    db "So it's", $00, "all been", $00, "masterminded by him.", $01
    db "But it's", $00, "good that you know", $00, "that now. Anyway", $00, "let's get out of", $00, $04, "this house first.", $01
    db "Do you", $00, "have any idea what", $00, "Wesker was going to", $00, "show you at the", $00, $04, "back of this place?", $01
    db "Well, he", $00, "was talking about", $00, "the world's most", $00, "powerful biological", $00, $04, "weapon called Tyrant", $00, $04, "or something,", $00, $04, "I think...", $01
    db "Do you", $00, "think we could see", $00, "Tyrant now?", $01
    db "Barry,", $00, "you're so", $00, "optimistic!", $01
    db "It would", $00, "look bad for STARS", $00, "if we let such a", $00, "dangerous creature", $00, $04, "run loose.", $01
    db "Maybe", $00, "you're right...", $00, "Let's go then!", $01
    db "It can't", $00, "control what", $00, "it does.", $01
    db "Can a", $00, "creature like this", $00, "really be the", $00, "ultimate biological", $00, $04, "weapon?", $01
    db "Really.", $00, "Wesker is a crazy", $00, "man.", $01
    db "Tyrant", $00, "is not completely", $00, "developed yet.", $01
    db "But we", $00, "can't let it live.", $01
    db "That must", $00, "be the computer", $00, "for monitoring", $00, "this creature.", $01
    db "Watch out!", $01
    db $00, "What happened", $00, "to Wesker?", $01
    db "Wesker", $00, "must have set it", $00, "off. There's not", $00, "much time left", $00, $04, "for us.", $01
    db "Oh Jill!", $01
    db $00, "Sorry for keeping", $00, "you waiting!", $01
    db $00, "So everything", $00, "is done?", $01
    db $00, "Well, almost, yes.", $00, "Now let's go!", $01
    db "Oh Chris!", $00, "So you're OK!?", $01
    db "Let's talk", $00, "about that later!", $00, "Let's get out", $00, "of here.", $01
    db "Barry...", $01
    db "This is", $00, "Brad! We're running", $00, "out of fuel! If", $00, "there is anyone", $00, $04, "alive, contact me!", $00, $04, "OK? This is your", $00, $04, "last notice...!", $01
    db "You're a", $00, "brave girl! But if I", $00, "were you, I wouldn't", $00, "give up such a big", $00, $04, "discovery. You guys", $00, $04, "are idiots. No one", $00, $04, "understands it's", $00, $04, "real value!", $01
    db "It must be", $00, "a STARS radio!", $00, "It's a little bit", $00, "broken, but it might", $00, $04, "be still useable.", $00, $04, "I'll take it with me", $01
    db "Rebecca!", $00, "Is she still in", $00, "the house?", $01
    db "Rebecca!", $01
    db "Chris!", $01
    db "Thank God", $00, "you're safe.", $01
    db "I'm sorry", $00, "that you were", $00, "worried about me.", $01
    db "We are", $00, "in great danger.", $01
    db "We must", $00, "organise a search", $00, "for the others and", $00, "get the hell out", $00, $04, "of here!", $01
    db "Yes, Sir!", $01
    db $00, "Understood?", $01
    db "OK. I'll", $00, "go first, proceed", $00, "with your own", $00, "judgement.", $00, $04, "All right?", $00, $04, "Can you do it?", $01
    db $00, "Yes I can!", $01
    db $00, "Good luck.", $01
    db $00, "What are they!?", $01
    db "Jill!", $00, "Have you found", $00, "anything", $00, "interesting?", $01
    db "Yes.", $00, "But I can't see", $00, "very well....", $01
    db "How about", $00, "going down to check", $00, "by yourself? I have", $00, "a rope here.", $01
    db $00, "Oh, do you?...", $00, "Well, then I'll try", $00, "to go down using", $00, $04, "the rope..", $01
    db "Wait!", $01
    db "Hey!", $00, "What's going on?", $01
    db "Now I've", $00, "done it! Sorry Jill.", $00, "Wait! I'll go and", $00, "get another rope!", $01
    db $00, "Barry? Barry!", $01
    db "Hey!", $00, "Are you there. Jill?", $00, "Grab the rope!", $01
    db $00, "I'm sorry Jill.", $01
    db "I didn't", $00, "know that was going", $00, "to happen!", $01
    db "Sorry. I", $00, "was really", $00, "careless.", $01
    db "Are you", $00, "OK. Barry? Maybe", $00, "you're getting", $00, "tired..", $01
    db "No.", $00, "I'm all right.", $00, "Don't worry.", $01
    db "Better yet, I'm going to show you the Tyrant..", $01
    
    ds $234, $00