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
all x1,x2 : User | some p : Photo | p in Ad and p in x1.sees implies
((p in x2.posts and x1 in follows.x2) or (p in x2.posts and x2 in 							suggested.x1))
}