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
all u,u2:User, p:Photo | u->p in sees implies ((u->u2 in follows and p not in Ad and u2->p in posts) or (p in Ad))
}