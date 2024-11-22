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
(some x: (one User) {
(((!(no (x.follows))) => ((x.suggested) = ((x.follows).follows))) || ((no (x.follows)) => (x = (x.suggested))) || (no (x.suggested)))
})
}





