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


pred inv1{
all p: Photo | some u : User | p in u.posts
all a : Ad| some u : User | a in u.posts
all p: Photo | some i : Influencer | p in i.posts
all a : Ad| some i : Influencer | a in i.posts
}