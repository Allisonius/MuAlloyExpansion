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
(some p: (one Photo),follow: (one User) {
((p in (u.sees)) && (follow in (u.follows)) && (p in (follow.posts)))
})
}) && (all u: (one User) {
(all ad: (one Ad) {
(ad in (u.sees))
})
}))
}





