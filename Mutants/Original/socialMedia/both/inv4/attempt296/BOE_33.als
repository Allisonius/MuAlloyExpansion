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
(all u: (one User) {
(some p1: (one Ad) {
(((u->p1) in posts) => (all p2: (one Photo) {
(((p1 != p2) && (posts in (u->p2))) => (p2 in Ad))
}))
})
})
}





