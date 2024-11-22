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
all p : Ad | all u1,u2 : User | u1 in sees.p and p in u2.posts implies u1 in follows.u2 or u1 in suggested.u2
}