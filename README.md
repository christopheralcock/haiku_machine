Hello!

This program started as a [haiku](https://en.wikipedia.org/wiki/Haiku_in_English) machine, with the idea being that it would ask you for some phrases and how many syllables you consider them to have, and give them back to you in a random order, a la , as a five syllable lines followed by a seven syllable line and another five syllable line.  (I know that technically haikus don't actually have a 5-7-5 syllable structure, but people think they do enough for it to be how the program works.)

Anyway, as I was doing it I realised that it would be fun for it to be expandable to other syllable counts, so that you could use it to generate [cut-up](https://en.wikipedia.org/wiki/Cut-up_technique) lyrics to fit existing melodies, so I implemented this.

For example, if you wanted to cut-up generate alternative lyrics to to the "Happy Birthday" song, on the topic of, say, frogs, you'd enter a few words related to frogs along with their syllables in your dialect:

frog - 1

frogs - 1

legs - 1

spawn - 1

amphibian - 4

green - 1

pond dweller - 3


Then specify 4 lines, with 6, 6, 7 and 6 syllables, and get the following:

GREEN FROG LEGS POND DWELLER

POND DWELLER FROGS GREEN LEGS

AMPHIBIAN FROG GREEN LEGS

GREEN FROG SPAWN POND DWELLER


which you can sing along to Happy Birthday if you like. Not certain why you'd want to, and I'm not curing cancer here, but I'll definitely be using it to come up with placeholder lyrics in songwriting in the future.

One problem with the lyrics generated is that their stress patterns won't necessarily fit the melodies, a bit like in a Manic Street Preachers song or something poorly translated.  I could possibly fix this in the future but it'd need a lot of thought.

Another weakness is that if the phrases supplied don't have a way of combining to actually fill the lines specified, the program won't successfully write the lines requested.  However, as long as a one syllable word is included, this won't be a problem.  I could write a logic tree that would prompt the user for more words, but I think that'd be more work than it's worth when I can just warn users in advance - it doesn't crash the program or anything.
