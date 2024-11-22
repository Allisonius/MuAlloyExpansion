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


pred inv8{
all u : User | all a : Ad | a in u.sees implies some followed, suggest : univ | (followed in a.posts and followed in u.follows) or (suggest->a in posts and u->suggest in suggested)
}