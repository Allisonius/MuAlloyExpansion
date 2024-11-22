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
all u: User, a: Ad | u->a in sees iff (some u1: User | u1->a in posts && (u->u1 in follows || u->u1 in suggested))
}