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
(all u1: (one User) {
(all a: (one Ad) {
(((u1->a) in sees) => (some u2: (one User) {
(((u2->u1) in suggested) || ((u2->u1) in suggested))
}))
})
})
}





