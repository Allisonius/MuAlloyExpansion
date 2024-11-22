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
(all u,v: (one User) {
((((u->v) != suggested) && (u != v)) => (some z: (one User) {
(((z->v) in follows) && ((u->z) in follows) && ((u->v) !in follows))
}))
})
}





