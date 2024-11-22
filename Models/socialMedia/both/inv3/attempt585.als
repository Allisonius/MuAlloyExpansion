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
all photo : Photo - Ad | all user : User | all follow : user.follows | photo in user.sees implies photo in follow.posts
}