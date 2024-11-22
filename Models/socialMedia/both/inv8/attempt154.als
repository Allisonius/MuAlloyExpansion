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
all u, us : User, a : Ad | u -> a in sees and us -> a in posts implies (u -> us in follows or u -> us in suggested)
}