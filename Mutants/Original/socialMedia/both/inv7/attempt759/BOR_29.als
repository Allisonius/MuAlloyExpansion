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
((all u,u1: (one User) {
(((u in ((u1.follows).follows)) && (u in (u1.follows))) => (u in (u1.suggested)))
}) && (all i,i1: (one Influencer) {
(((i in ((i1.follows).follows)) && (i !in (i1.follows))) => (i in (i1.suggested)))
}))
}





