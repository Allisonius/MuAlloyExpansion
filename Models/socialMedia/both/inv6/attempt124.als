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
all i : Influencer | all d : Day | all p : Photo | (i in posts.p) implies (d in date.p)
}