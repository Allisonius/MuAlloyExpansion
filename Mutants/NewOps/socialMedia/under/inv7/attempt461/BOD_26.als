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
(all disj x,y: (one User) {
((y in (x.follows)) => (some z: (one User) {
((z in (y.follows)) && (z !in (x.follows)))
}))
})
}





