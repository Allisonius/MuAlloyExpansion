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
(all x0,x1,x2: (one User) {
(((x2 in (x1.follows)) && (x1 in (x0.follows)) && (x2 = (x0.follows)) && (x0 != x1) && (x1 != x2) && (x0 != x2)) => (x2 in (x0.suggested)))
})
}





