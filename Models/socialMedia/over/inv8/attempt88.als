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
all u,y : User | all a : Ad | u in sees.a implies (((u in follows.y) or (u in suggested.y)) and (y in posts.a))
}