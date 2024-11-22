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
all u : User - Influencer| one ad : Ad | ad in u.sees implies (one u2 : u.follows + u.suggested | ad in u2.posts )
}