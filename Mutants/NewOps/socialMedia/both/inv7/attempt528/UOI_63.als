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
(all others: (one (u_f.follows)) {
((others in (u.suggested)) && (others !in (u.(*follows))))
})
})
})
}





