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


pred inv4{
all u:User
| some pht:Photo
| pht in Ad and u->pht in posts implies all otherPht:Photo | u->otherPht in posts implies  otherPht in Ad
}