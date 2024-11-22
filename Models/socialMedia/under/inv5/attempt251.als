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
all influencer, user : univ | influencer in Influencer and user in User and influencer!=user implies user->influencer in follows
}