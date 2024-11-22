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
(all p: (one Photo),x0,x2: (one User) {
(((p in (x2.posts)) && ((x0.sees) in p) && (p !in Ad)) => (x2 in (x0.follows)))
})
}





