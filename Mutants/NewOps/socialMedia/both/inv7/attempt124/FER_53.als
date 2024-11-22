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
(all x,x1: (one User) {
((x1 in (x.suggested)) => ((x in (x1.follows)) && (x1 !in (x.suggested))))
})
}





