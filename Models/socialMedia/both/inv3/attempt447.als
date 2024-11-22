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
all u1,u2 : User | all p : Photo | p in u1.sees implies ((p in Ad and u2 not in u1.follows) or (p not in Ad ))
}