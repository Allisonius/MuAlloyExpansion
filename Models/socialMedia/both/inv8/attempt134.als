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
all x, y: User, z:Ad| x->z in sees and y -> z in posts implies x-> y in follows  or x->y in suggested
}