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
all u1,u2:User, p:Photo-Ad | u1 in p.sees and p in u2.posts implies u1 in u2.follows
}