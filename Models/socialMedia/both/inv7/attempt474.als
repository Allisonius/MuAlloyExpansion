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
all disj e: User, o: User, s: User | (e in o.follows && s in o.follows && s not in e.follows) => s in e.suggested
}