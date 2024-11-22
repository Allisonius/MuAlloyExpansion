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
(all u,u1: (one User) {
(((p !in Ad) && (p in (u.posts)) && (p in (u1.posts)) && (u != u1)) => ((u1->u) in follows))
})
})
}





