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


pred inv7{
all x,y,z : User |
(y->x in follows and x->z in follows and y->z not in follows and y!=z and y!=x and x!=z)
implies y->z in suggested
}