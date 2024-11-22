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


pred inv4{
all x, y : univ | x->y in posts and x in Influencer and y in Ad implies (all z : univ | x->z in posts implies z in Ad)
}