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
all u, f, s: User - Influencer | (f in u.follows and s in f.follows and s not in u.follows) implies s in u.suggested
}