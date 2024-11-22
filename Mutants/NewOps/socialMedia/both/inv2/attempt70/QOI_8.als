module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv2[] {
(some var123456 : Influencer { (no ((((follows.User) & (suggested.User)) & (follows.var123456)) & (suggested.var123456)))})
}





