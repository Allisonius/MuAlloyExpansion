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
all ph:Photo, u1,u2:User | ph in u1.posts and ph in u2.posts implies u1 = u2
}