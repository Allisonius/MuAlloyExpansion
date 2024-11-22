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
all x, y: User | y -> x in suggested iff (all z: User | x -> z in follows and z -> y in follows and not x -> y in follows)
}