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
all u : User | u.follows.posts - Ad in u.sees - Ad
all a : Ad, u : User | a in u.sees
}