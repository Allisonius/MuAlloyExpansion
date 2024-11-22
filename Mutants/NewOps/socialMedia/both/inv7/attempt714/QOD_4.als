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
(some u: (one (User - s)) {
((s in (u.suggested)) <=> ((u != s) && (s in ((User - s).follows)) && ((User - s) in (u.follows)) && (s !in (u.follows))))
})
})
}





