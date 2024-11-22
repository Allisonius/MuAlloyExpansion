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
(all f: (one Influencer) {
((f in (u.suggested)) => (some v: (one User) {
(((v->f) in follows) && ((u->v) in follows) && (u != f) && (u != v) && (f != v))
}))
})
})
}





