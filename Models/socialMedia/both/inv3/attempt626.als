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
all u,uu:User, pht:Photo | uu->pht in posts and u->uu not in follows implies u->pht not in sees



all ad:Ad, u:User | u->ad in sees
}