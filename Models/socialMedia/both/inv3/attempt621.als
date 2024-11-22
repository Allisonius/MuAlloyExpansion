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
(all a, c : User, b : Photo | ((b not in Ad) and (b in a.sees) and (b in c.posts)) implies c in a.follows) or (all a : User, b : Ad | b in a.sees)
}