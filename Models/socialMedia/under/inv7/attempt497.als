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
all x,y : User | y in x.suggested implies x!=y and x not in follows.y
and some z : User | z in x.follows and z in follows.y
}