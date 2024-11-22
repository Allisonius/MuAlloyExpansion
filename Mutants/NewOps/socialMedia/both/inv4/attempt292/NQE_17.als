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
(some p: (one Photo) {
(all u: (one User) {
(((p in (u.posts)) && (p in Ad)) => (all p2: (one Photo) {
((p2 in (u.posts)) && (p2 in Ad))
}))
})
})
}





