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
(all u: (one User) {
(some ad: (one Ad) {
((ad in (u.posts)) => (all p: (Photo & Ad) {
((p in (u.posts)) && (p in Ad))
}))
})
})
}





