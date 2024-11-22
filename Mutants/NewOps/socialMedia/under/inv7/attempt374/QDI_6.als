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
(all u: (User - Influencer) {
(all uf: (one (u.follows)) {
(all uff: (one (((uf.follows) - (u.follows)) - u)) {
(uff in (u.suggested))
})
})
})
}





