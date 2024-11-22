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
all s : User | (some u : User | u->s in suggested implies (some u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows))
}