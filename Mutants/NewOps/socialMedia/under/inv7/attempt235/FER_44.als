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
(all u,x: (one User) {
(((u in (x.suggested)) && (u != x)) => ((u !in (x.sees)) && (u in ((x.follows).follows))))
})
}





