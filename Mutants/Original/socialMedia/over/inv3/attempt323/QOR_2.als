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
(no u1: (one User) {
(some u2: (one User) {
(all p: (one Photo) {
((((u1->p) in sees) => (p in Ad)) || ((p in (u2.posts)) && (u2 in (u1.follows))))
})
})
})
}





