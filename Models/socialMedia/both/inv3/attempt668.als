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
all x: User | all z: User | all p: Photo | p in z.posts and z in x.follows => x in sees.p && all a: Ad | all y: User | y in sees.a
}