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


pred inv8{
all u: User, a: Ad | a in u.sees implies (some u2: User | u2 in u.follows or u2 in u.suggested)
}