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
(all y: (one User) {
(all p: (one Ad) {
((y in (x.follows)) && (p in (y.posts)) && (x in (sees.y)) && (p !in Ad))
})
})
})
}





