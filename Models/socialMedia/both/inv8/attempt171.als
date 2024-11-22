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
all a: Ad, u1, u2: User | u1->a in sees and u2->a in posts <=> u1->u2 in follows or u1->u2 in suggested
}