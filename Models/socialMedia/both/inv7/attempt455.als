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
all user1, user2: User | user2 in user1.follows.follows and user2 not in user1.follows implies user2 in user1.suggested
}