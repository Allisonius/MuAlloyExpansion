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
all p:Photo,x0,x2:User | p in x2.posts and p in x0.sees and p not in Ad implies x2 in x0.follows
}