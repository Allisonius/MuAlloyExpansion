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
all user : User | some suggested_user : user.suggested | (suggested_user != user and suggested_user not in user.follows and some following : user.follows | suggested_user in following.follows)
}