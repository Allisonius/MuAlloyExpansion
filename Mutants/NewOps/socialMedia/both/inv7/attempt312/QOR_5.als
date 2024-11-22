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
(some u: (one User),uu: (one User) {
(((uu !in (u.follows)) && (uu in ((u.follows).follows))) => (uu in (u.suggested)))
})
}





