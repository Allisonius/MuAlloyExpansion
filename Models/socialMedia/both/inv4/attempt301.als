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


pred inv4{
one u : User | some p1:Photo| (p1 in Ad and u->p1 in posts) implies (all p2:Photo|u->p2 in posts implies p2 in Ad)
}