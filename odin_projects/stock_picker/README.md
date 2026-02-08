Lesson from the Odin Project:
https://www.theodinproject.com/lessons/ruby-stock-picker

-----------------------------------------------------------------------------------------------------------------------

Instructions:

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should 
return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12

Quick Tips:

You need to buy before you can sell
Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

-----------------------------------------------------------------------------------------------------------------------

After Lesson Summary:

This one felt really easy.  I didn't have to do much Googling at all, and was able to quickly pick proper methods for
achieving my desired result.

Majority of my time was spent thinking through the pseudo code, and determing what sort of approach was necessary.
I landed on a sort of brutish iterative approach, which cycles through all possible options and then filters them.

I think this could have been done in both a more elegant and more efficient way, but I do feel proud of being able to
leverage what I know for this one.

-----------------------------------------------------------------------------------------------------------------------

Afterwords:

I enjoyed using real-world data in this example, but I can't really bring myself to "appify" this into a proper program
with a UI and everything for a couple reasons:

	1: Advising people to think about stocks in the manner that this project suggests is horribly dangerous advice:
	
	Here is a quote from someone more qualified than me or you about investing:
	"The stock market is a device for transferring money from the impatient to the patient." -- Warren Buffett	

	2: In order for me to really make a useful stock-picker, I'd have to develop a method of web-crawling and
		scraping, and that wasnt really the point of this project, and I'm more interested in continuing with 
		the curriculum than trying to make a useful version of this project.

I think Chai is an underrated tea, and the idea that it is less commonly consumed than regular boring black tea is as 
strange as it is concerning.

-----------------------------------------------------------------------------------------------------------------------

