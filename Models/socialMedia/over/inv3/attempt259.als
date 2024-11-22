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
all p: Photo , u: User , u1 : User | p not in Ad and u->p in sees implies(u->u1 in follows and u1->p in posts)
}