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
(all u1: (one User) {
(all u2: (one User) {
(all p: (one (u2.posts)) {
(((p !in Ad) && ((u1->p) in posts)) => (u2 in (u1.follows)))
})
})
})
}





