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


pred inv7{
all x : User | (x.suggested = x.follows.follows) or some y : User | y in x.follows and x in y.follows implies y in x.suggested
}