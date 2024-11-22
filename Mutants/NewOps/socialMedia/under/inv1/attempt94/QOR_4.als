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
pred inv1[] {
(some d1,d2: (one Day) {
(((d1.(integer/prev[])) = d2) => ((d2.(integer/next[])) = d1))
})
}





