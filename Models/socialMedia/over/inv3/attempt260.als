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
all user1, user2 : User | all p : Photo | p in user1.sees implies (p in user2.posts and user2 in user1.follows)
}