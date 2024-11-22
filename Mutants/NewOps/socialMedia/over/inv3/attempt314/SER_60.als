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
(Ad in (u.sees))
}) && (all u: (one User) {
(all p: (one ((u.sees) - Influencer)) {
(some u: (one (u.follows)) {
(p in (u.posts))
})
})
}))
}





