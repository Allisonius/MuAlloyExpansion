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
all u : User | all ad : u.sees | some ad & Ad implies (one u2 : u.follows + u.suggested | ad in u2.posts )
}