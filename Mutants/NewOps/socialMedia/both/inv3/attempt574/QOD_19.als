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
(all x: (one User) {
(all u: (one User) {
(all a: (one Ad) {
(((((Photo)) !in a) && (u !in (x.follows))) => (((Photo)) !in (x.sees)))
})
})
})
}





