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
all x: User | some p1: Ad | p1 in x.posts implies (all p2: Photo | p2 in x.posts and p2 in Ad)
}