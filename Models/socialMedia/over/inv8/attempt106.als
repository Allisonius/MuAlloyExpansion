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
all a : Ad | all u : User |some y : User| u in sees.a implies ((a in posts.y) and ((y in u.follows) or (y in u.suggested)))
}