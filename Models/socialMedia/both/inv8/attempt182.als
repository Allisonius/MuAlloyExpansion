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
all x:User, y:User, a:Ad| y->a in posts and x->a in sees implies (x->y in follows or y->x in suggested)
}