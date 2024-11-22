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
(all p: (one User) {
(all u,u1: (one User) {
(((p in (u.posts)) && (p in (u1.sees))) => (u1 in (u.follows)))
})
})
}





