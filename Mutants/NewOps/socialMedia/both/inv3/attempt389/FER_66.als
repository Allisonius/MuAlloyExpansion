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
(all x: (one (Photo - Ad)) {
(all y,z: (one User) {
(((y in (sees.x)) && (z in (posts.x))) => ((y->z) in sees))
})
})
}





