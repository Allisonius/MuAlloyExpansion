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
pred inv8[] {
(all u,u2: (one User) {
((((u->((Photo))) in sees) && (((Photo)) in Ad)) => (((u->u2) in follows) || ((u->u2) in suggested)))
})
}





