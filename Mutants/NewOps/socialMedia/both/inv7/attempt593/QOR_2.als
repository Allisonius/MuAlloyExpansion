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
(all segui: (one (u.follows)) {
(all s: (one (User - u)) {
((s in (u.suggested)) => ((s !in (u.follows)) && (s in (segui.follows))))
})
})
})
}





