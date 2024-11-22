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
(some u: (one User) {
(all s: (one ((u.suggested) - u)) {
((s !in (u.follows)) && (s in ((u.follows).follows)))
})
})
}





