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
(all u,i: (one Day) {
(((i in (u.suggested)) && (i !in (u.follows))) => (some o: (one User) {
((o in (u.follows)) && (i in (o.follows)) && (i != o) && (u != i) && (u != o))
}))
})
}





