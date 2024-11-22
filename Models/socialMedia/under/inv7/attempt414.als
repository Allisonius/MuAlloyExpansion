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
all x,y : User | x not in x.suggested and x != y and y not in x.follows and y in x.follows.follows implies y in x.suggested
}