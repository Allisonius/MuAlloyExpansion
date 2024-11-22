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
(no u1,u2: (one User) {
(all p: (one Photo) {
(((p in (u1.posts)) && (p in (u2.sees)) && (p !in Ad)) => (u1 in (u2.follows)))
})
})
}





