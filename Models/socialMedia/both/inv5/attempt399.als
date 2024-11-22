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


pred inv5{
all i:Influencer | all u1,u2:User | (u1->i in follows and u2->i in follows) implies u1!=u2
}