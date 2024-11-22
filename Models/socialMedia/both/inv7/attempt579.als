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
all u : User | all u_followed : follows.u | all sugg : follows.u_followed | sugg not in follows.u => sugg in u.suggested
}