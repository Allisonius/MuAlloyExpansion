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
(u !in (u.suggested))
}) && (all u1,u2: (one User) {
((u2 in (u1.follows)) => (u2 !in (u1.sees)))
}) && (all u1,u2: (one User) {
((u2 in (u1.suggested)) => (u2 !in Influencer))
}) && (all i: (one Influencer) {
(no (i.suggested))
}) && (all u1,u2: (one User) {
(((u2 in ((u1.follows).follows)) && (u2 !in (u1.follows))) => (u2 in (u1.suggested)))
}))
}





