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
((all u: (one User) {
(no p: (one (Photo - Ad)) {
(some x: (one User) {
(((p in (x.posts)) && (p in (u.sees))) => (x in (u.follows)))
})
})
}) && (all a: (one Ad) {
(some i: (one User) {
(all u: (one (User - i)) {
(a in (u.sees))
})
})
}))
}





