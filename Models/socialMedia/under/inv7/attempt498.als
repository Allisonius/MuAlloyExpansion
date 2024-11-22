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
all x, z: User | x in z.suggested && x not in z.follows && z != x => some y: User | y in z.follows && x in y.follows
}