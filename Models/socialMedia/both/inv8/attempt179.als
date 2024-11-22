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
all x:User, t:User, a:Ad| x->a in sees and t->a in posts implies x->t in follows or x->t in suggested
}