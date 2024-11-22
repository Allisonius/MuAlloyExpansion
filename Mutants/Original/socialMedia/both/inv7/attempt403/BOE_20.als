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
(all u2: (one User) {
(((((u.follows).follows) in u2) && (u2 !in (u.follows))) => (u2 in (u.suggested)))
})
})
}





