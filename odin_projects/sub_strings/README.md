Project: Sub Strings
from the Odin Project
https://www.theodinproject.com/lessons/ruby-sub-strings

-------------------------------------------------------------------------------------------------

Goals: 
    Commit more frequently
    Complete Project Efficiently

-------------------------------------------------------------------------------------------------

Here are the instructions for this project at the time of completion:

instructions:
Implement a method #substrings that takes a word as the first argument 
and then an array of valid substrings (your dictionary) as the second 
argument.

It should return a hash listing each substring 
(case insensitive) that was found in the original string and how many 
times it was found.

-------------------------------------------------------------------------------------------------

After Project Thoughts:

	After completing this project, I feel as if I was more of an
	accumulator of pieces of code VS a "true coder".  I struggled
	significantly with just about every step.

	Perhaps the longest period of time, and greatest area of
	struggle was around developing the substring_counter method:

	This method is responsible for checking 1 string for all of
	a specific substring's occurances within that 1 string.  I
	struggled with methods like select, count, tally which I
	would think were promising at first, but then realized that
	they would output the wrong type of information, like a
	boolean for the first occurance (#include?) or would count
	every instance of any letter like with #count.

	I felt a little hopeless and spent most of this period
	Googling, until I found a solution that uses regex.  Once I
	found this method, I didn't fully understand it, and felt as
	if I was "cheating" by implementing it.  I felt like I had
	Googled too explicitly, and robbed my learning development
	of the opportunity to come up with that type of solution my
	self.  

	I am not sure that my level of concern is appropriate
	because I am uncertain about whether struggling harder is
	a necessary hurdle for becoming a good programmer or merely
	an exercise in bashing my head against the wall in an attempt
	to reinvent the wheel.  I tried to compensate for this worry
	by doing deeper dives on the new code I was implementing to
	better understand it.

	
-------------------------------------------------------------------------------------------------

Code Deep Dive and reflection:
	
	substring_counter method
		new methods/ concepts
			?= Look-Forward for Regex expressions
			
				the "banana" "ana" problem:
				normal #scan would only return one
				"ana" because it discards characters
				after looking at them.

				"aba" in "abababa" would only find 2
				and not the middle one.

				?= how look ahead fixes this:
				?= doesnt move the curser forward
				when it finds a match, it looks
				ahead for it, but doesnt throw out
				characters or anything.

			regex expressions refresher

				the additional () around #{substring}
				were necessary, because without them
				scan was just returning blank strings
				for each find like : ["",""] instead
				of ["ana","ana"]

				this is because of lookaheads:
				since lookahead, isnt "capturing"
				characters, its called a
				0-width-assertion.  this means it is
				finding matches without capturing
				anything.

				the fix is a "capture group" here:
				the inner () in the regex tells ruby
				to take a picture of the substring
				when you come across it.

				Regex Capture groups: () and look-
				aheads ?= are a Regex thing, not
				jsut a Ruby thing, and the method of
				using () to save a snapshot for 
				later is common in Regex

			#scan

				method for String class:
				uses a simple string or Regex to
				find all occurances of a substring
				in a string.  

				Basic Syntax:
				string.scan(pattern)
				or
				string.scan(pattern) { |match| }

				the pattern is usually something
				like a regex /.../ means find
				every 3 consecutive characters
				(except new-line)
				output like ["ban", "ana"]

				Capture Groups: ()
				string.scan(/(...)/) will contain
				the three character groups in an 
				array i.e. [["ban"],["ana"]]

				in this case: the look-ahead with
				the capture group is necessary for
				capturing the substrings in an
				array like [["ana"],["ana"]]

				this format was incorrect and
				leads us to #tally and
				#transform_keys to fix the format

			#tally#transform_keys

				#tally
				tally is a new(er) method that
				counts arrays and provides a nice
				tally kind of sequence for dupes

				["re","re"].tally => {"re" => 2}

				in our example it would be 
				something like {["ana"] => 2} at
				this point, which is closer to
				the desired format but has the
				extra nested array, which is
				undesirable

				#transform_keys

				this lets us... transform keys
				(go figure!) lol
				{["ana"] => 2}.tranform_keys do |key|
					key = key[0]
				end
				
				this would transform the key
				["ana"] into the first (and only)
				member of its array

				["ana"][0] = "ana"

				our final result will be in the
				proper format now { "ana" => 2 } 

			accessing hashes
				
				the transform_keys method here
				helped me to access hash keys
				and change them from arrays to
				strings, by accessing the string
				within those arrays.

	arr_of_hashes_to_hash method
		new methods/ concepts

			#reduce(:merge)

				reduce(:) syntax:

				I have a decent enough
				understanding of basic reduce
				usage: but this is a shorthand
				I was unfamiliar with.

				reduce is just boiling down a
				collection to one object. used
				for sums, or adding certain
				items to a new collection when
				an empty hash or array is used
				as the accumulator.

				this shorthand is skipping
				a bunch of typing, it takes a
				long-hand .reduce {|ac,el| ac+el}
				and turns it to .reduce(:+)
				
				so basically it takes the
				method performed on the acc
				by the element and assumes the
				order, and that the acc will
				start as the first element
				
				its because its such a common
				form of reduce to perform a
				method on the accumulator with
				the argument of an element that
				they made a shorthand for it

				Hash#merge method
				
				combines two hashes, if a 
				duplicate key pops up, it takes
				the 2nd or "newer" hash's value
				
-------------------------------------------------------------------------------------------------

Closing Remarks: (2/7/26)

	I woke up at 4AM today, and have been listening to the
	opening theme for Legend of Zelda: Ocarina of Time.
	Something about it fills me with nostalgia and peace.

	Instrumental music seems to be the only type of music
	I can listen to while learning and still feel
	productive.

	Bitcoin is way down, and I feel like I should buy more

	- Janitor
