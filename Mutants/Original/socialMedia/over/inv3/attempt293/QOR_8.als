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
(one y: (one User) {
(all p: (one Photo) {
((y in (follows.x)) && (p in (y.posts)) && (p != Ad) && (x in (sees.p)))
})
})
})
}





