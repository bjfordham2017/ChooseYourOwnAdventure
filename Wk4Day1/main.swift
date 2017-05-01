//
//  main.swift
//  Wk4Day1
//
//  Created by Brent Fordham on 4/18/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation

print("Why hello there!")
let firstName = getStringFromUser(prompt: "And what might your name be?", failureMessage: "No, really, I need to know your name.", allowEmptyString: false)


let lastName = getStringFromUser(prompt: "And the name of your house?", failureMessage: "Surely there is something they call you to set you apart from all the other \(firstName)s in the world.", allowEmptyString: false)

let mainCharacter = classChoice()


print("Ah, \(mainCharacter).  Such a distinguished name!")

print("Now let us tell your story")

func storyOf(_ mainCharacter: CharacterType) {
    print("You wake up to find yourself lying on the floor of a room you don't recognize.  In fact, you have absolutely no memory of going to sleep the previous day.  Or really any memory of the previous day at all.")
    print("You look around and find that the room has three apparent exits: a hole in the floor with a climbing rope, a ladder leading to an open window high above you, and a door on the far wall.")
    let firstChallenge = getChoiceFromUser(prompt: "Which way will you try to escape the room?", choices: ["The floor", "The window", "The door"])
    switch firstChallenge {
        case "The floor":
            print("Your descent through the hole seems to go on for hours.  As the mouth of the hole contracts to a distant point of dim light, you finally run out of rope, but not out of hole.  This was clearly a trap")
            return
        case "The window":
            print("It isn't a terribly far climb up to the window.  When you reach it, however, you find that a family of suprisingly angry birds is nesting there.  Between the agressive pecking and the fall back to the floor, you're in no condition to be going anywhere right now")
            return
        case "The door":
            print("Huh.  The door is unlocked.  That was easy.")
        default:
            print("You... just didn't follow the rules...")
            return
    }
    print("Now that you're out of that room, let's see what comes next.")
    print("     ")
    print("You emerge into a round chamber with several doors presumably leading to cells like your own, and an opening to a passage beyond.")
    print("You hear the sounds of someone trapped in what of the other rooms, perhaps a damsel in distress!")
    let secondChallenge = getChoiceFromUser(prompt: "Will you run, or try to help your fellow prisoner?", choices: ["It could be a trap. I'm saving myself!", "I will help my fellow prisoner. Two of us will have a better chance of escape!"])
    switch secondChallenge {
        case "It could be a trap. I'm saving myself!":
            print("Well that's selfish choice.")
            print("Your questionable morals are justly rewarded as an ogre barrels into the room and punches you in the face")
            return
        case "I will help my fellow prisoner. Two of us will have a better chance of escape!":
            print("A noble choice...")
            print("However, your efforts are interrupted by the arrival of a large, but not terribly bright-looking ogre.")
            print("'How did you get out here!' cries the ogre.  'Did I forget to lock the doors again?  No matter!  I will crush you!'")
        default:
            print("Still not following the rules")
            return
    }
    print("You must handle this ogre before he makes good on his word.  He may not be very bright, and perhaps he isn't terribly brave.")
    let thirdChallenge = getChoiceFromUser(prompt: "How will you trick him into running away?", choices: ["I'm pretty tough. I'll take him head-on!", "He looks pretty tough... I'll talk my way out", "It might be time to surrender? I kind of liked my room anyway."])
    switch thirdChallenge {
        case "I'm pretty tough. I'll take him head-on!":
        print("You rush the ogre...  And he grabs you with one hand and throws you to the ground")
        print("Brute force might not have been the way to go on this one.")
        return
        case "He looks pretty tough... I'll talk my way out":
        print("'Of course you left the doors unlocked, you dolt!  You're lucky it's made the errand I'm running for our employer easier.  Leave now and I'll promise not to tell him about this.  you know how he punishes those who disappoint him twice.'")
        print("After an uncomfortably long pause to think, the ogre decides you might be telling the truth and promptly leaves.")
        case "It might be time to surrender? I kind of liked my room anyway.":
        print("Surrender?  I thought you were supposed to be some kind of great hero or something")
        print("I'm going to go tell someone else's story.  Enjoy your boring cell!")
        return
    default:
        print("That's.. not a thing")
        return
    }
    print("Now, back to our rescue mission...")
    print("The other prisoner's door has predictably also been left unlocked.")
    print("You now find yourself facing your fellow prisoner...")
    let fourthCHallenge = getChoiceFromUser(prompt: "She certainly looks like a damsel, and who wouldn't be distressed in such a situation... Shall you boldly announce your intention to rescue her?", choices: ["Damsels do respect bold gallantry, I suppose", "She probably knows more than I do..."])
    switch fourthCHallenge {
        case "Damsels do respect bold gallantry, I suppose":
            print("'Fear not, fair lady' you say, 'it is I, \(mainCharacter), and I am here to rescue you!'")
            print("The damsel does not look impressed")
            print("'Rescue me? Seriously?  I mean, maybe I didn't think to check and see of the door was already unlocked, but I'm still pretty sure I can take care of myself, thank you very much!'")
            print("She brushes by you and shuts the door as she leaves.")
            print("This time, you can hear the lock slide into place.")
            return
        case "She probably knows more than I do...":
            print("'Ah, greetings, my lady... Would you mind telling me where we are and how we might make our escape?'")
        default:
            print("You, good sir or madame, have found what people in later ages shall call a 'bug'")
            return
    }
    print("'I am not sure where we are', she answers you, 'but this is not my first escape attempt.  The ogre who guards these cells may be easily fooled, but a second, more cunning beast watches the door that leads outside.  Perhaps you can provide a distraction that will help us dispatch him'")
    switch mainCharacter.specialSkill {
    case .magic:
        print("It's fortunate then that you are something of a wizard.  'I can make us invisible!', you exclaim.")
        print("After a few minutes of various incantations and gesticulations according to the usual magical formulae for making a magician and his companion invisible, you and your fellow prisoner are able to simply sneek by the more dreadful of the two ogres unnoticed.")
    case .martialArts:
        print("Fortunately, you're quite the capable fighter.  You would have no chance against an ogre by yourself, but together you should be able to take him.")
    case .persuasion:
        print("'Well he can't be cleverer that me', you boast, though not without reason.  You should be able to hold the second ogre's attention long enough for your partner to get the drop on him.")
    case .none:
        print("There's, actually not much the likes of you could do to help.  Maybe you'd better wait for an actual hero to show up")
        return
    }
    print("Together, you and the 'damsel' (We've got to get a better word for her.  Doesn't she have a name?) easily make you're escape")
    print("Unfortunately, this all leaves you both with far more questions than answers.  Why were you both brought here? And how?  And where is here anyway?")
    print("'Let's travel together, friend, and try to discover what in the world is going on,' says the fellow prisoner we are no longer calling a damsel.")
    let finalScene = getChoiceFromUser(prompt: "Do you go with her, or just try to find your way home?", choices: ["Go for more adventure!", "Go home!"])
    switch finalScene {
        case "Go for more adventure!":
        print("Excellent!  Of course, we'll have to wait for part two, which will no doubt be twice as long as part one and be out in a couple years. Even then, we may not really get anywhere until part three or four.  You know how fantasy writers can be.  Before any of that, though, we should really figure out our companion's name.")
        return
        case "Go home!":
        print("Okay, well, that's not exactly a classic ending, but it is an ending.  Not every fantasy story has to be a trilogy or tetrology or whatnot.")
        return
    default:
        print("What, did you want to go for drinks instead or something?")
        return
    }
}

storyOf(mainCharacter)
