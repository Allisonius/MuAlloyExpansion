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
some u : User | some a : Photo | a in Ad and a in u.posts implies all p : Photo | p in u.posts and p in Ad
}