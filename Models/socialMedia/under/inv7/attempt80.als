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
all disj e,s,o: User | (e in s && s in o && e not in o) => o in e.suggested
}