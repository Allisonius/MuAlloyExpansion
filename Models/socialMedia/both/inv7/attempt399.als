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
all u1, u2, u3 : User | u1 in u2.follows and u2 in u3.follows and u1 not in u3.follows implies u3 in u1.suggested
}