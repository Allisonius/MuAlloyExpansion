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


pred inv7{
all u : User | all u2 : User | u in u2.suggested implies ( u not in u2.follows and u in u2.follows.follows and u != u2)
}