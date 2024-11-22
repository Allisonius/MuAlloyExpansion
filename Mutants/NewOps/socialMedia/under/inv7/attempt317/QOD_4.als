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
(all x0,x1: (one User) {
((x0 in (x1.suggested)) => ((((User)) in (x1.follows)) && (x0 in (((User)).follows))))
})
}





