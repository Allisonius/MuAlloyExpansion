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


pred inv1{
all p:Photo,x1,x2:User | p in x1.posts and p in x2.posts implies x1=x2 and x1 in User
}