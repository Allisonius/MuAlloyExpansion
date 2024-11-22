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
all x: User | all f : x.follows.follows | f in x.suggested => f not in x.follows

all x: User | all f : x.suggested |  f in x.follows.follows and f not in x.follows
all x: User | x not in x.suggested
}