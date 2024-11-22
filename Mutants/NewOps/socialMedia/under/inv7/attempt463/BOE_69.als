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
(all u2: (one ((User - (u.follows)) - u)) {
((u2 in (u.suggested)) => (one u3: (one (u.follows)) {
((u3.follows) in u2)
}))
})
})
}





