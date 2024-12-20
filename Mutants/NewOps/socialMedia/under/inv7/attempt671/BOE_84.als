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
pred inv7[] {
(all u: (one User) {
(all s: (one User) {
(((u != s) && ((u->s) in suggested)) => (some u1: (one User) {
(((u->u1) in follows) && ((u1->s) in follows) && (follows !in (u->s)) && (u1 != u) && (u1 != s))
}))
})
})
}





