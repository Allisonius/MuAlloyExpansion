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
(all u,i: (one User) {
((i in (u.suggested)) => (some o: (one User) {
((o in (u.follows)) && (i in (o.follows)) && (i !in (u.(*follows))) && (i != o) && (u != i) && (u != o))
}))
})
}





