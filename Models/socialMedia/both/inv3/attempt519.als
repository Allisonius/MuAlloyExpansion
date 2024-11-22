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
all u1: User, p: Photo, u2: User | u1->p in sees implies (p in Ad || (u2->p in posts implies u1->u2 in follows))
}