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
pred inv4[] {
(all u1: (one Photo) {
(some p1: (one Ad) {
((p1 in (u1.posts)) => (all p2: (one Photo) {
((p2 in (u1.posts)) && (p2 in Ad))
}))
})
})
}





