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
all u : User | all p : Photo | u->p in sees implies ((one v : User | v->p in posts and u->v in follows) or (p in Ad))
}