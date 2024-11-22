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


pred inv8{
all u,u1 : User | all a:Ad | a in u1.posts and a in u.sees implies u1 in u.suggested or u1 in u.follows
}