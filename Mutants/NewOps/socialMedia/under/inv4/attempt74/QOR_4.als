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
(some x: (one User) {
(all y: (one Ad) {
(all z: (one (Photo - Ad)) {
((y in (posts.x)) => (z !in (posts.x)))
})
})
})
}





