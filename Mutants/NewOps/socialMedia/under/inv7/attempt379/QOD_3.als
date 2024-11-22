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
(some f: (one (u.follows)) {
(((u.suggested) in (f.follows)) && (no ((u.follows) & (u.suggested))))
})
})
}





