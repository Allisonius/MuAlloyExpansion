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
(all f: (one (x.suggested)) {
((f in ((x.follows).follows)) => (f !in (x.follows)))
})
}) && (all x: (one Influencer) {
(x !in (x.suggested))
}))
}





