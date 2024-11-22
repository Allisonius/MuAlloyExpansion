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
all disj e,s,o: User | (s in e.follows && o in s.follows && o not in e.follows) => (o in e.suggested && e not in e.suggested)
}