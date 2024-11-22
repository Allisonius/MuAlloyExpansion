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
((all u: (one User) {
(u !in (suggested.u))
}) && (all u4,u5: (one User) {
((u4 in (follows.u5)) => (u4 !in (suggested.u5)))
}))
}





