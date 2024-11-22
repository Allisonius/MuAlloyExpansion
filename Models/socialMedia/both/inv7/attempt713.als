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
all u1, u2 : User | u1 in suggested.u2 implies (some u3 : User | u3 in follows.u1 and u3 in follows.u2 and u1 not in follows.u2 and u1 != u2 and u2 not in follows.u1)
}