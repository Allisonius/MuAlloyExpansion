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
all u,f : User, img : Photo | (img in u.sees) implies (img=Ad or (f in u.follows and img in f.posts))
}