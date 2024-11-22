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


pred inv6{
all x : User | all p : Photo | all d : Day | x in Influencer implies
(p in x.posts and d in p.date)
}