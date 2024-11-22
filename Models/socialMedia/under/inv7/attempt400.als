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
all s, u : User | (s in u.follows.follows and s not in u.follows and s not in Influencer and u != s) implies s in u.suggested
}