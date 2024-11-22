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
(one x: (one User) {
(((x.suggested) = ((x.follows).follows)) || (some y: (one User) {
(((y in (x.follows)) && (x in (y.follows))) => (y in (x.suggested)))
}) || ((no (x.follows)) => (x in (x.suggested))))
})
}





