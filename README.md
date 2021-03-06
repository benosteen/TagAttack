<img src="http://piskel-imgstore-b.appspot.com/img/22e5ac80-4927-11e5-9b68-616540b32d18.gif" width="48px"/>

***Tag Attack*** *has been developed for the British Library's Crowdsourcing Game Jam (
http://itch.io/jam/britishlibrary).*  

*To my wife and son.*

Copyright 2015, Antonio Jesús Sánchez Padial 
* Tag Attack is licensed under GPL v3  
* p5js, p5played and underscore library are licensed under MIT  
* Yuri the Fox and sound effects is licensed under Creative Commons - Attribution - Share Alike  
* All music is Copyright @OzzedNet. Licensed under Creative Commons - Attribution - Share Alike

Help Yuri the Fox to classify 1M+ pictures for the Brittish Library! Yes I said 1 million! You know that's too much for a cute baby fox, and better not remember what happens to young librarians who fail (children may be reading this).

The main goal of this project was to design a game where player's performance can be evaluated in a context where very little is known about what's right or wrong, specially because the player's supposed to be training the machine.

# The problem

The first time I read about the jam I hesitated to take part. Even if
I was grown with an 48k ZX Spectrum as a pet and I am very keen on game culture (specially indie, retro and dev) and digital humanities; gamification is not very appealing to me. The reason is I feel many gamification efforts are only facade, not making a real game that can be enjoyed by itself out of the gamificated chores.

I **knew** you *cannot* make a real game of tagging, because the computer *cannot* valuate the player's performance.

After reading http://britishlibrary.typepad.co.uk/digital-scholarship/2015/08/crowdsourcing-as-interesting-decisions-update-from-bl-labs-2015-competition-winner.html I changed my mind. Adam nailed it saying the possibility of losing is what makes games fun and thrilling.

I only needed a way to know if players were doing it well or not to be able to make a proper gamification of tagging. So I focused on performance evaluation.

## Alternatives

Valuating tagging performance is all about knowing if the tag assigned to any given item matches its **real** tag. The problem appears when we don't know *it's real tag*.

So we'll have to use the little we know in the way it makes the most sense. Furthermore the players have to feel their evaluations are fair, because they will quit playing otherwise.

### Valuate the user
In the beginning the only knowledge we have is a set of tagged items. My first option, the same Gary Green (@ggnewed) proposed in his blog, was to use those items to evaluate the player's general performance, and use that value as a score of how well tagged are any unknown item they tag afterwards.

#### Drawbacks  
* The tagged items may not be a good representation of the whole collection. Maybe only the easiest items were identified, or only those concerning some themes. Curating a rich and representative set of tagged items seems like a hard work I would rather prefer to avoid.
* Even worse. Players need a feedback of their successes and fails. Using their initial performance to evaluate everything will drive, sooner or later, to a unfair judgement (positive or negative). A positive unfair judgement will drive the player to tag nonsenses in the belief anything they do is approved. A negative one will make them quit sooner the game. Both mean boredom, and boredom makes people leave the game.

### Use trained knowledge
In the big data era we can easily take advantage of knowledge generated dynamically by the game itself. I mean, we can use the tags other players are setting to unknown items, in order to valuate how well future players are tagging the same. We can guess how well a tag matches an item scoring how many players agree on it, and use later that score in order to valuate future players.

#### Drawbacks
* Early players are valuated with different criteria than later ones. We have to keep track of when tags were set to an item, an take it into account later. It sounds like really difficult to be fair about that issue.
* Bias. Democracy kills singularity. If a few players tag an item in a singular (but right) way, they will be scored with a low performance and that behaviour will be abandoned. This is not only unfair, making players prone to leave, but also makes the project less successful as it will miss important information that only a minority of people is concerned with.

## My solution

My proposal is to evaluate the performance while they play. I will throw them known and unknown items in a dynamic ratio. The player is not told if an item is known or unknown. At the beginning of the game the unknown/known ratio is low, let's say 1. Every time the player choose the right tag for known items the ratio grows (+1). Two untagged items every tagged one, then three, four, etc. When the player fails the ratio decreases (by half). This numbers should be studied carefully to optimize the game and the player's feedback, but that would need some hundred or thousands of games.

This dynamic evaluation of performance hides most unfair judgements to the player, but it isn't enough to avoid the player realising about them. So another design goal was to put the player into a mental state of flow: they can only think about tagging the next item with no time to analize if their performance evaluation (a.k.a. score) is fair or not.

The features I chose to help players to reach this state are:
* Furious action, the game has a fast pace. I could also add levels making it more difficult every time you fail, etc.
* Cute characters. There's not much interaction with Yuri, the game pet, but I realise people focus on him, instead of other aspects of the game.
* Rythm. The amazing fast-beat music by @OzzedNet makes people feel the game is faster than it is in fact.

While the player are in flow, or next to it, they suspend their disbelief about how their score is calculated.

# Project state
You can find a demo of the game at http://ajspadial.itch.io/tag-attack. This demo uses only a small set of items (a few dozens) of the whole open Brittish Library's collection at flickr.

## Issues & Priorities

* The game has some memory leaks. After playing a few games things start to slow down, and you have to restart the browser. I have to make an analysis on the way resources are managed. This is the **top one priority**
* Aesthetics. Retro and pixels are cool, but **Tag Attack** can have a little better look even maintaining its 8bits feel.
* Logging. Every player action (specially tagging) has to be logged and uploaded to a server in order to analise it and use it for machine learning, etc. The richest is this log, including when a tag was set (time in a game, game speed, difficulty level, performance ratio, ...) the more analytics we could do later.
* Back end. **Tag Attack** needs a **back-end server** that proxies the Brittish Library collection at Flickr, and manage some tasks as logging, etc.
* Levels. Add levels in several consecutive games, in the way Tetris did.
* In game tutorials. Explain better what's happening to players, at least in the beginning.
* Traps, like bombs or fake pictures you don't have to tags, or have to do something with, in order to rise difficult and drive players to flow.
* Refactoring (cleaning) of the source code. Not only its leaky, but it sucks (a little). Maybe moving to another game engine, who knows.
* Make a real website for the game.

# A Future for Tag Attack
I have many plans for **Tag Attack**. Maybe they are too many. Anyway I will only work on them once I solve the main priorities I stated before.

* A mobile version
* Statistics and graphs on players performance
* Improve scoring and choose new ways to modify the dynamic performace evaluation (the way unknown/known ratio is calculated).
* Improve mechanics as items speed, difficulty, etc.
* Make it compatible with any organization collection who is using a harvesting protocol like OAI/PMH.
* Add more cute characters.

# Language disclaimer
English is not my native language, and I know sometimes I'm not the best at explaining my reasonings. Please feel free to correct any *bug* you find. Just tell me, or throw a Pull Request if you feel like so.
