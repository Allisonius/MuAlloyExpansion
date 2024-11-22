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
all user : User + Influencer | (user not in user.suggested) and (user.follows not in user.suggested)
all user1, user2 : User + Influencer | (user2 in user1.follows.follows) implies user2 in user1.suggested
}