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
(all s: (one ((u.(^suggested)) - Influencer)) {
((s !in (u.follows)) && (some f: (one ((u.follows) - Influencer)) {
(s in (f.follows))
}))
})
})
}





