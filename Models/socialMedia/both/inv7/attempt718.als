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


pred inv7{
all s:User | some u:User-s | s in u.suggested iff some u1:User-s | u1 != u and s in u1.follows and u1 in u.follows and s not in u.follows
}