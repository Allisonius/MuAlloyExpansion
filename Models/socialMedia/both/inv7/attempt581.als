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
all u,x: User | ( some y : User | u->y in follows and y->x in follows and x->u not in follows and u !=x ) iff u->x in suggested
}