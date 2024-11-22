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
(all u_f: (one (follows.u)) {
(all others: (one (follows.u_f)) {
((others in (suggested.u)) => (others !in (sees.u)))
})
})
})
}





