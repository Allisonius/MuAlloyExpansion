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
(some u,s: (one User) {
((s in (u.suggested)) => ((s in ((u.follows).follows)) && (u != s) && (!(s in (u.follows)))))
})
}





