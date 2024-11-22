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
all x : User | all y: User | all z: User | (z in x.suggested and z not in x.follows  )=> (z in y.follows and y in x.follows)
}