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
(all x: (one User) {
(all z: (one (User - x)) {
((((z.suggested) in x) && (x !in (z.follows))) => (some y: (one (z.follows)) {
((x in (y.follows)) && (x != y))
}))
})
})
}





