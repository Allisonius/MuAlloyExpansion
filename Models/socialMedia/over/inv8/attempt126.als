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
all u1 : User | some u2 : User | all ad : Ad | ad in u1.sees implies ((ad in u2.posts and u2 in u1.follows) or (ad in u2.posts and u2 in u1.suggested))
}