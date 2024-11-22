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
((all x: (one User) {
(no f: (one ((x.follows).follows)) {
((f !in (x.follows)) => (f in (x.suggested)))
})
}) && (all x: (one User) {
((x !in (x.suggested)) && ((x.follows) !in (x.suggested)))
}))
}





