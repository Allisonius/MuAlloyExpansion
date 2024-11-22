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
all user : User | user not in user.suggested
all user1, user3 : User+Influencer | ((user3 not in user1.follows) and (user3 in user1.follows.follows)) implies user3 in user1.suggested
}