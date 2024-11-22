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
(some k: (one (x.follows)) {
(((x.sees) !in Ad) || ((x.sees) in (k.posts)))
})
})
}





