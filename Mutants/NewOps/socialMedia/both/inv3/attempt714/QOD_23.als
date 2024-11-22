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
(some x: (one User) {
((((Photo - Ad) in (x.posts)) && ((Photo - Ad) in (u.sees))) => (x in (u.follows)))
})
}) && (all u: (one User) {
(all p: (one Photo) {
((p in (u.posts)) => (p !in (u.sees)))
})
}))
}





