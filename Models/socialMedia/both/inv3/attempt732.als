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
all u, z : User | all p : Photo | all a : Ad | z->p in posts and p!=a and u!=z and u->p in sees implies u->z in follows
all u, f : User | all a : Ad | u->a in sees and f->a in posts and f!=u
}