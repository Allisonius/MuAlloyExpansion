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
all s, u : User | u->s in suggested => (s != u and u->s not in follows and (some f : User | u->f in follows and f->s in follows))
}