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
all p : Photo, u : User | p in u.sees implies (p in Ad or one u1 : u.follows | p in u1.posts)
}