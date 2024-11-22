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
all u:User | all p:u.sees | one u1:u.follows | (p not in u.posts) and ((p in Ad) or (p in u1.posts and u1 in u.follows))
}