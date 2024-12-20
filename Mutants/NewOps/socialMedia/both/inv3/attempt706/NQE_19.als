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
((some p: (one (Photo - Ad)) {
(all u: (one User) {
(some x: (one User) {
(((p in (x.posts)) && (p in (u.sees))) => (x in (u.follows)))
})
})
}) && (all u: (one User) {
(all a: (one Ad) {
((a in (u.sees)) => (a in Ad))
})
}))
}





