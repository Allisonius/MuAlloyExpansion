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
(all x: (one (z.suggested)) {
(((User - z) in (z.follows)) && (x in ((User - z).follows)) && (x != (User - z)) && (x != z))
})
})
}





