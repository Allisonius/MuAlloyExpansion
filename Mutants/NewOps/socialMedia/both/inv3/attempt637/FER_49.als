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
((all u,u1: (one User) {
(all p: (one Photo) {
(((p in (u.posts)) && (p in (u1.posts))) => (u in (u1.follows)))
})
}) && (all a: (one Ad) {
(all u: (one User) {
(a in (u.sees))
})
}))
}





