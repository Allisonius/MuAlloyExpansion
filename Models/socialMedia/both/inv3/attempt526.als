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
all a : User, b : Photo | b in a.sees implies b in Ad or (all c : User | b in c.posts implies c in a.follows)
}