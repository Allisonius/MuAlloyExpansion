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
all ad: Ad | ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
}