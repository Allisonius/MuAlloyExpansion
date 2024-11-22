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


pred inv5{
all u1 : User | all inf : Influencer | inf in u1.follows and inf not in inf.follows and inf not in follows.inf
}