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
all u1, u2 : User | all p : univ | p not in Ad and u1->p in posts and u2->p in sees implies u2->u1 in follows
}