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


pred inv3{
all u : User | all a : Ad | a in u.sees
all p : Photo - Ad | all u,y : User | (p in u.sees and p in y.posts) implies y in u.follows
}