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


pred inv7{
all user : User | all suggested : user.suggested | (suggested != user and suggested not in user.follows and one following : user.follows | suggested in following.follows)
}