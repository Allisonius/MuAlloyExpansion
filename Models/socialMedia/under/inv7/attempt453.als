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
all u,s: User | s in u.suggested implies some u1: User | u1 in u.follows and s in u1.follows and u != s and u != u1
}