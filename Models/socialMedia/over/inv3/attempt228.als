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
all x: User, y: User, p : Photo | y in follows.x and p in y.posts and  x in sees.p and p  not in Ad
}