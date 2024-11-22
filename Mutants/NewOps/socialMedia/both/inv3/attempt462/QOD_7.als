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
pred inv3[] {
(all u,u1: (one User) {
(((((Photo)) !in Ad) && (((Photo)) in (u.posts)) && (((Photo)) in (u1.sees))) => (u1 in (u.follows)))
})
}





