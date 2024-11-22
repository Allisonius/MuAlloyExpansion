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
(all u: (one User) {
(all uf: (one (u.follows)) {
((((Photo)) in (uf.posts)) => (((((Photo)) !in Ad) && (((Photo)) in (u.sees))) => (((Photo)) in Ad)))
})
})
}





