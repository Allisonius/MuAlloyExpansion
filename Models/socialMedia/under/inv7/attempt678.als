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
all user : User | all user_suggested : user.suggested | (user_suggested != user and user_suggested not in user.follows and some following : user.follows | user_suggested in following.follows)
}