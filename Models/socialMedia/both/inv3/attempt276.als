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


pred inv3{
all u1 : User, p: Photo | ((p in u1.sees) and (p not in Ad)) implies (posts.p in u1.follows)
}