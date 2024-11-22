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
all x,y:User | all a:Ad | x->a in sees implies x->y in follows and y->a in posts
all x:User | all a:Ad | x->a in sees
all x:User | x.follows.posts not in Ad
all x:User | x.sees in Ad
}