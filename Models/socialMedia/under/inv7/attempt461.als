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
all disj x,y:User | y in x.follows implies some disj z:User| z in y.follows and z not in x.follows implies z in x.suggested
}