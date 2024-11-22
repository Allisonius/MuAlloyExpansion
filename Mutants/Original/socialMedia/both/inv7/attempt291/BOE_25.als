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
pred inv7[] {
(all x,y,z: (one User) {
(((x in (y.follows)) && ((z.follows) in y) && (x !in (z.follows))) => (x in (z.suggested)))
})
}





