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
(all x,y: (one User) {
(all p: (one Photo) {
(((p != Ad) && (x != y)) => (((p in (x.suggested)) && (p in (y.posts))) => (y in (x.follows))))
})
})
}





