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
all u : User | all ad : u.sees | all ad_p : ad.posts | ad_p in follows.u || ad_p in suggested.u
}