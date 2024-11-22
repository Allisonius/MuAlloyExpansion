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
pred inv2[] {
(some x: (one User) {
(some y: (one User) {
((lone (follows.x)) && (some (follows.y)) && (x != y))
})
})
}





