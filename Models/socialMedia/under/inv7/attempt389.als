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
all u1 : User, u2 : u1.follows, u3 : u2.follows |  u3 != u1 and u3 not in u1.follows iff u3 in u1.suggested
}