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
(all u1: (one User) {
(all p: (one Photo) {
((((u1->p) in sees) && (p != Ad)) => (some u2: (one User) {
(((u1->u2) in follows) && ((u2->p) in posts))
}))
})
})
}





