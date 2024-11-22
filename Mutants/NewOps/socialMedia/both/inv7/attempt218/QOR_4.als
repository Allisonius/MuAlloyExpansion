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
(one u: (one User) {
(all u1: (one (u.follows)) {
((u.suggested) = (((u1.follows) - (u.follows)) - u))
})
})
}





