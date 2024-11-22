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
all u:User, u2:User, u3:User, a:Ad | a in u.sees implies ( (a in u2.posts and u2 in u.follows) or (a in u3.posts and u3 in u.suggested))
}