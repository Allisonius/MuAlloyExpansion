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
(all x,y: (one User) {
((x != (y.suggested)) => ((x !in (y.follows)) && (one z: (one User) {
((z in (x.follows)) && (y in (z.follows)))
})))
})
}





