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


pred inv3{
all u: User | all p: u.follows.posts | all ad: Ad |  p in u.sees and ad in u.sees and u.posts in u.sees
}