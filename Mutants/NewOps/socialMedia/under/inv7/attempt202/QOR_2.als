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
(no x,y: (one User) {
(((x in ((y.follows).follows)) && (x !in (y.follows)) && (x != y)) => (x in (y.suggested)))
})
}





