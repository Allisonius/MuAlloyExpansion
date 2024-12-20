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
all i:User-Influencer | all p:Photo | i->p in posts implies (one d:Day | p ->d in date )
}