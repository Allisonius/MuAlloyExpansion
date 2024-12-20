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
(all f: (User - Influencer) {
((f in (x.suggested)) => (f !in (x.follows)))
})
}) && (all x: (one User) {
(x !in (x.suggested))
}))
}





