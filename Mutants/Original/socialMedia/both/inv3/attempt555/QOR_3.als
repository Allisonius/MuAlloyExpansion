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
(lone p: (one (Photo - Ad)) {
(all u1: (one User) {
(all u2: (one User) {
(((p in (u1.posts)) && (p in (u2.sees))) => (u1 in (u2.follows)))
})
})
})
}





