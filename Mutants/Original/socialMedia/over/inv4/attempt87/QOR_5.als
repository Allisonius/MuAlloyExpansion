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
pred inv4[] {
(some p: (one (Photo & Ad)) {
(all u1: (one (posts.p)) {
(all p2: (one (u1.posts)) {
(p2 = Ad)
})
})
})
}





