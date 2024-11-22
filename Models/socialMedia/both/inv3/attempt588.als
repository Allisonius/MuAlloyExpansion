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
all u1,u2 : User | all p1 : Photo | all ad : Ad | p1 in u1.sees and p1 in u2.posts and p1 != ad implies u2 in u1.follows
}