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
(all u: (one User) {
(all p: (one Photo) {
(((p in (u.sees)) && (p in Ad)) || (some u1: (one User) {
((p !in (u1.posts)) && (u1 in (u.follows)))
}))
})
})
}





