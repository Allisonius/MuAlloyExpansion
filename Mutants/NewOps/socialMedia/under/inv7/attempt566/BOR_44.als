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
((all x: (one User) {
(x !in (x.suggested))
}) && (all x,z: (one User) {
(((x in z) && (z in (x.suggested))) => ((z !in (x.follows)) && (z in ((x.follows).follows))))
}))
}





