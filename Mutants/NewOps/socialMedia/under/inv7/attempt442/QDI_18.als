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
(all u: (one User) {
(all u2: (User - Influencer) {
((u in (u2.suggested)) => ((u != u2) && (u !in (u2.follows)) && (u in ((u2.follows).follows))))
})
})
}





