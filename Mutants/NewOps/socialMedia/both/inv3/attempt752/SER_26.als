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
((all u1,u2: (one User) {
(all ph: (one Ad) {
(((ph in (u1.posts)) && (ph in (u2.sees))) => ((u1 in (u2.follows)) && (u1 != u2)))
})
}) && (all u1,u2: (one User) {
(all ph: (one Photo) {
(some ad: (one Ad) {
(((ph in (u1.sees)) && (ph in (u2.posts)) && (u1 !in (follows.u2))) => ((ph = ad) && (u1 != u2)))
})
})
}) && (all u1: (one User) {
(all ph: (one Ad) {
((ph in (u1.posts)) => (ph !in (u1.sees)))
})
}))
}





