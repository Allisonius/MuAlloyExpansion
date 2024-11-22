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
all u1:User, u2:User, u3:User | (u1 in follows.u2 and u3 in follows.u2 and u1 not in follows.u3) implies (u3 in suggested.u1)
}