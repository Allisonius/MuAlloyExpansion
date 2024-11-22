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
((all u1: (one User) {
(all p: (one (u1.posts)) {
(one u2: (one (u1.follows)) {
((p !in Ad) && (p != (u2.posts)))
})
})
}) && (all a: (one Ad) {
(all u: (one User) {
(a in (u.sees))
})
}))
}





