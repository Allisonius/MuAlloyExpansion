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


pred inv5{
all i : Influencer, u : User | u in follows.i
all u1, u2 : User | u1 in follows.u2 implies u1 not in suggested.u2
all u : User | u not in suggested.u
}