Caesar Cypher Project:

I made this along with the Odin Project:
https://www.theodinproject.com/lessons/ruby-caesar-cipher

---------------------------------------------------------------------------------------------------------------------------------------

I forgot to commit early and often here, and of that I am a little ashamed, for a couple reasons:

1: Better documentation of my algorithm & Pseudo-code would have been helpful for recreating my thought process and learning progression
2: It makes me feel like a "Real Coder" when my github activity is bright green.
3: While, I didn't encounter too many horrible bugs here, it potentially could have been easier to track and debug with good commits.

---------------------------------------------------------------------------------------------------------------------------------------

This first real bug I encountered was that whitespace and punctuation were returning with alphabetical values.

I had assumed that ! didnt have an #upcase, but I was wrong, and that makes sense considering how #upcase is used on whole passages of
text and not individual characters usually.

I tried to be clever and use char#upcase === char type of conditional validation to simultaneously solve both the
retaining-capitalization feature and the maintaining punctuation feature, but since that didn't actually make sense: I resolved to 
using ranges of unicode values to differentiate between alphabetical letters, and non alphabetical letters.

--------------------------------------------------------------------------------------------------------------------------------------

I struggled in a couple areas here with unexpected output, such as only getting the first letter of the cypher back, and getting an 
empty space back as well.

I'm going to be blunt, I'm not sure how I got that fixed:

I altered the flow of the map program and tried being more explicit about return, but that didnt work, so I started plugging in next
in case input was somehow falling through my conditional.  It seems to be working well with the "next #{return value for map}" syntax
I've implemented paired with the final return of the caesar_cypher method being cypher_array.join("")

I wish I had documented this portion of my struggle more adequately as I dont fully understand what I didn't understand here and my
solution feels a little hackish

--------------------------------------------------------------------------------------------------------------------------------------

Anyways, if you're a real person and you're reading this: I'd like you to know that I typed this in 2026 in nano, and that there is
still organic life present in this AI-generated world of tech that we find ourselves in.  I sincerely hope that you achieve your
dreams and desires, but only if they are beneficial and make you happy.

I will leave you with the following prompts, should you so be willing to give me advice:

Should I buy the dip in Bitcoin? (2/2/26)

I think I'm about to be a single dad, and that's scary

Are we silly for learning to code in 2026? Are we mastering a useless art like fax-machine-experts, or developing superpowers of
understanding agentic-output and scaffolding that will set us ahead of our peers?  (I hope its the latter, but now i fear I'm becoming
a boomer.)

- Janitor
