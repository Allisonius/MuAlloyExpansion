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
(no u: (one User) {
(all s: (one (u.suggested)) {
(all f: (one (u.follows)) {
(s in (f.follows))
})
})
})
}





