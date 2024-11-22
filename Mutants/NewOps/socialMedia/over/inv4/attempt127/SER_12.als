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
((all p1,p2: (one User) {
(all ad: (one Ad) {
(all x: (one User) {
(((p1 = ad) && (p1 in (x.posts)) && (p2 in (x.posts))) => (p2 = ad))
})
})
}) && (all u1: (one User) {
(all p1: (one Photo) {
((p1 in (u1.posts)) => (p1 !in (u1.sees)))
})
}))
}





