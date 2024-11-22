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
all u:User | all uf: u.follows | all p:Photo | (p in uf.posts) implies (p not in Ad) && (p in u.sees) implies (p in Ad)
}