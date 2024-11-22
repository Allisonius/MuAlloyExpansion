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
all u : User | all ad : Ad | ad in sees.u => (posts.ad in suggested.u || posts.ad in follows.u)
}