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
pred inv4[] {
(some p1,p2: (one Photo) {
(((p1 in (((User)).posts)) && (p1 in Ad)) => ((p2 in (((User)).posts)) && (p2 in Ad)))
})
}





