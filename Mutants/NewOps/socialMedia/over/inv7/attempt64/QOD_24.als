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
(some f: (one (u.follows)) {
(((u.suggested) != u) && ((u.suggested) in (f.follows)) && ((u.suggested) !in (u.follows)))
})
}) && (all u: (one User) {
((u.suggested) = (((u.follows).follows) - (u.follows)))
}))
}





