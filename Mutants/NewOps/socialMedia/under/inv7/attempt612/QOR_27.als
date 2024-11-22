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
(all s: (one (u.follows)) {
(one y: (one (s.follows)) {
(((u != s) && (u != y) && (s != u) && (s != y) && (y !in (u.follows))) => (y in (u.suggested)))
})
})
})
}





