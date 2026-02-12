Project is part of the Odin Project: https://www.theodinproject.com/lessons/ruby-bubble-sort
--------------------------------------------------------------------------------------------
Instructions: 
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the 
bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
--------------------------------------------------------------------------------------------

After project Reflection:

This was a medium difficulty for me.  The only significant issue I faced was that I tried to
use a conditional recursively, instead of recognizing I needed a loop for recursive methods.

However, I only realized my blunder after version control edditing with git, and debugging.
My struggles were with significant rust on remembering how to go back to a previous commit
with git, because my first thought was that I had a scoping issue.  So after my scoping
"solution" (more accurately a failed attempt to fix something I didnt understand) I realized
1: I wanted to go back to my DRY solution
2: I needed to brush up on my git and debugging skills.

<git>

I ended up being able to go back a version with <git checkout HEAD~1> after banging my head
against <revert> for a while (which apparently is something completely different and more
serious lol).  I had to Google the solution to get that to be the main branch, and it gave
me something that seemed a little hackish to me (but I dont know anything to be fair lol):
<git branch -f main HEAD>
<git checkout main>
<git push origin main --force>

After this, I don't feel more confident in my gitabilities, but I do feel more confident in
my ability to know where to look for solutions, which is probably more important than being
the greatest git wizard of all time. (although git wizardry does sound like a super power)

The second bump I hit was in debugging with ruby, I sort of clicked around in the debug
section of <VSCode> until it got working, I added a bunch of tracking variables and started
stepping through my iteration which eluminated why a conditional was only running a
"recursive" function twice. It wasnt running through all of the necessary iterations 
because I wasnt really looping it in a recursive way, just running twice because the method was nested in an if statement instead of a loop.

After converting the if statement to a while loop, the program worked smooth as butter, with
my check to see if it was done early and everything.

--------------------------------------------------------------------------------------------

Afterword:

In the book The Six Pillars of Self-Esteem, the distinction between self-efficacy and
self-respect is interesting to me, because one can feel capable without feeling deserving of
love/ care/ societal appreciation.

Bitcoin is still low, and I wish I had more money to buy the dip, but I also may be a fool.

The only path to success in my life is improving myself, regardless of the situation.
