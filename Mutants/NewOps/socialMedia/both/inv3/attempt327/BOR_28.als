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
(all p: (one Photo) {
(all u1: (one User) {
((p != (u1.sees)) => ((p in Ad) || ((posts.p) in (u1.follows))))
})
})
}





