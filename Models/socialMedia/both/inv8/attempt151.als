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
all u,u1: User, a: Ad | u->a in sees and u1->a in posts => (u->u1 in follows or u->u1 in suggested)
}