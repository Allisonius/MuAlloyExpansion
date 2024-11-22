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
inv2 and
all x : User | x.sees in x.follows.posts or x.sees in Ad
}

pred inv2{

all x : User | x not in x.follows
}