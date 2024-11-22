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
(all u1,u2: (one User) {
(((((Photo)) !in Ad) => ((((u1->((Photo))) in posts) && ((u2->u1) in follows)) => ((u2->((Photo))) in sees))) && (all u: (one User) {
((((Photo)) in Ad) => ((u->((Photo))) in sees))
}))
})
}





