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
(all x: (one User) {
(all y: (one Ad) {
(lone z: (one (Photo - Ad)) {
((y in (posts.x)) => (z !in (posts.x)))
})
})
})
}





