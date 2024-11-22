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
(all u: (one Influencer) {
(all b: (one (u.suggested)) {
((b in ((u.follows).follows)) => (b !in (u.follows)))
})
})
}





