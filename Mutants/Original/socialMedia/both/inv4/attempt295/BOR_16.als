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
(some p: (one Photo) {
((((u->p) in posts) && (p != Ad)) => (all p1: (one Photo) {
(((u->p1) in posts) => (p1 in Ad))
}))
})
})
}





