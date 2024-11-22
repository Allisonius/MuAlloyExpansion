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


pred inv3{
all x : User | all y : Photo | all z: Ad | y in x.sees and (y!=z and y in x.follows.posts || y = z)
}