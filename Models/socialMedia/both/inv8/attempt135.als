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
all u, us : User, a : Ad | a in u.sees and a in us.posts implies (us in u.follows or us in u.suggested)
}