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
(all s: (one User) {
(no u: (one (User - s)) {
((s in (u.suggested)) <=> (some u1: (one (User - s)) {
((u1 != u) && (s in (u1.follows)) && (u1 in (u.follows)))
}))
})
})
}





