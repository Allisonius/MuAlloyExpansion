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


pred inv5{
all inf : Influencer | all u: User | inf in u.follows
all inf,inf2 : Influencer | inf in inf2.follows
}