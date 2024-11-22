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
all u:User, u2:User, p:Photo | (u2 not in u.follows and p in u2.posts and p in u.sees) implies p in Ad
}