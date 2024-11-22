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
(all x,y,z: (one Day) {
((y in (x.follows)) && (z in (y.follows)) && (z !in (x.follows)) && (z in (x.suggested)) && (x !in z))
})
}





