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
(all ad: (one Ad) {
(((((Photo)) = ad) && (((Photo)) in (u1.posts))) => ((u1.(^posts)) = ad))
})
})
}





