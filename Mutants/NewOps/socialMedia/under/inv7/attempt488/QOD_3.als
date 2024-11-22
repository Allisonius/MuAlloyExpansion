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
(all z: (one User) {
(some y: (one (User - z)) {
((y in (z.follows)) && ((z.suggested) in (y.follows)) && ((z.suggested) != y) && ((z.suggested) != z))
})
})
}





