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
(all p: (one Photo) {
(all u1: (one User) {
(all u2: (one User) {
((p in (u1.sees)) => (((p in (u2.posts)) && ((u2.follows) in u1) && (p !in Ad)) || (p in Ad)))
})
})
})
}





