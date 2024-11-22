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
(lone a,b,c: (one User) {
(((b in (c.follows)) && (b !in (a.follows)) && (c in (a.follows))) => (b in (a.suggested)))
})
}





