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
all u : User, p : Photo | all f : User | u->p in sees and f->p in posts and p not in Ad implies u->f in follows or u = f
}