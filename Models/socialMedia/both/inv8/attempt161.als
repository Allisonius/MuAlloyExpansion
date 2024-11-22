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
all u, u2 : User | (all p : Photo | u->p in sees and p in Ad implies (u->u2 in follows or u->u2 in suggested))
}