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
all s:User | some u:User-s | (s in u.suggested) iff (u != s and s not in u.follows and some u1:User-s | s in u1.follows and u1 in u.follows)
}