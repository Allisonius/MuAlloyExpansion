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
all u,y,z : User | u in suggested.y implies ( (u not in follows.y) and (u in follows.z) and (z in follows.y))
}