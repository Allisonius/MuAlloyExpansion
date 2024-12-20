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
(all s: (one (u.suggested)) {
((s in ((u.follows).follows)) && (s !in (u.follows)) && (u !in s))
})
}) && (all u: (one User) {
(all u2: (one User) {
((u in (u2.suggested)) => ((u !in (u2.follows)) && (u in ((u2.suggested).follows)) && (u != u2)))
})
}))
}





