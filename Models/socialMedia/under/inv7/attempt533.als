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
all u: User, s: User | some f: User | u->s in suggested and u->s not in follows implies (u->f in follows and f->s in follows)
}