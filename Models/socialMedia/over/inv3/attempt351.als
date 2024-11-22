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
all u : User | all l : u.sees |l in u.follows
all a : Photo-Ad | all u: User |all l : u.follows | l in u.sees
}