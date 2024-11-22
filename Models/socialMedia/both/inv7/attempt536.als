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
all x : User | all y : x.follows | (x in y.follows and x not in y.suggested) or (x not in y.follows and x in y.suggested)
}