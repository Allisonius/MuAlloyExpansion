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
all u : User | all s: u.follows | all y: s.follows | u!=s and u!=y and s!=u and s!=y and y not in u.follows implies y in u.suggested
}