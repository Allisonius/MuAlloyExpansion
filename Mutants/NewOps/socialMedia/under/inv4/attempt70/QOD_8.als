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
((one y: (one (((User)).posts)) {
(y in Ad)
}) => (all z: (one (((User)).posts)) {
(z in Ad)
}))
}





