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
((all u: (one User) {
(u != ((u.follows) + (u.suggested)))
}) && (all x: (one User) {
(all u: (one (x.suggested)) {
((u in ((x.follows).follows)) && (u !in ((x.follows) + x)))
})
}))
}





