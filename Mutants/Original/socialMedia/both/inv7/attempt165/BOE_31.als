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
(all u,u1,u2: (one User) {
((u in (suggested.u1)) => ((u1 in (follows.u2)) && ((follows.u) in u2)))
})
}





