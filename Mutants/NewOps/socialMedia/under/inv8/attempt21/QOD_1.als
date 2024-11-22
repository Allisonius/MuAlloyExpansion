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
pred inv8[] {
(all u: (one User) {
((((Ad)) in (sees.u)) => (some x: (one User) {
((u in (follows.x)) && (((Ad)) in (posts.x)))
}))
})
}





