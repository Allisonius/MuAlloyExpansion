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
(some s: (one (u.suggested)) {
(some f: (one (u.follows)) {
((s != u) && (s in (f.follows)) && (s !in (u.follows)))
})
})
}) && (all u: (one User) {
((u.suggested) = (((u.follows).follows) - (u.follows)))
}))
}





