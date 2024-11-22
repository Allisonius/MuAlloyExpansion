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
(all x1,x2,x3: (one User) {
((x3 in (x2.suggested)) => ((x2 in (follows.x3)) && (x1 in (follows.x2))))
})
}





