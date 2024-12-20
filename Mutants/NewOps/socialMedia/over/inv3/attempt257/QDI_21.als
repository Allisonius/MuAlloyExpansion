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
((inv2[]) && (all x: (one User) {
(all y: (Photo & Ad) {
(some z: (one User) {
((y in (z.posts)) && (z in (x.follows)))
})
})
}))
}
pred inv2[] {
(all x: (one User) {
(x !in (x.follows))
})
}





