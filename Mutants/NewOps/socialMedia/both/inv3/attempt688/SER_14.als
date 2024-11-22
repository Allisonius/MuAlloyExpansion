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
((all u: (one Ad) {
(some p: (one (Photo - Ad)) {
(some x: (one User) {
((p in (u.sees)) => ((x in (u.follows)) && (p in (x.posts))))
})
})
}) && (all a: (one Ad) {
(all u: (one User) {
(a in (u.sees))
})
}))
}





