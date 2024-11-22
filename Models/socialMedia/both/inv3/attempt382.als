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
all u,u1: User, p: Photo| p not in Ad and p in u.sees and p in u1.posts implies u1 in u.follows
}