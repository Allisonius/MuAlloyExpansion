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
all ad : Ad - Photo | all user : User | all follow : user.follows | ad in user.sees implies ad in follow.posts
}