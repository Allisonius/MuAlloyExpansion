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
((some x: (one User) {
(all f: (one ((x.follows).follows)) {
((f !in (x.follows)) => (f in (x.suggested)))
})
}) && (all x: (one User) {
(all f: (one (x.suggested)) {
((f in ((x.follows).follows)) && (f !in (x.follows)))
})
}) && (all x: (one User) {
(x !in (x.suggested))
}))
}





