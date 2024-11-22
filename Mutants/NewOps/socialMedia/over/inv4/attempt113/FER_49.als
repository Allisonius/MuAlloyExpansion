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
(all u1: (one User) {
(all p1: (one Photo) {
(all ad: (one Ad) {
(((p1 = ad) && (p1 in (u1.sees))) => ((u1.(^posts)) = ad))
})
})
})
}





