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
(some u: (one User) {
(((((Photo)) in (u.sees)) && (((Photo)) in Ad)) || (one u1: (one User) {
((((Photo)) in (u1.posts)) && (u1 in (u.follows)))
}))
})
}





