sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}


pred inv8{
all x : User |  (x.follows.posts in Ad or x.posts in Ad or x.suggested.posts in Ad) implies x.sees in Ad
}