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
all x : User | all y : User | all p : Photo - Ad | y not in follows.x and p in y.posts and x not in sees.p
}