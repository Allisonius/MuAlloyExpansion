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
all a : Ad | all u : User | u in sees.a implies (some y : User | (a in y.posts) and ((y in follows.u) or (y in suggested.u)))
}