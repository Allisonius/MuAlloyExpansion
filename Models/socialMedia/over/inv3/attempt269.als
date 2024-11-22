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
all p : Photo, u : User | p in u.sees implies ((all v : User | p in v.posts and v in u.follows) or p in Ad)
}