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
(some f: (one (Photo - u)) {
((f in (u.suggested)) => ((f in ((u.follows).follows)) && (f !in (u.follows))))
})
})
}





