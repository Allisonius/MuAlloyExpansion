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
((all u1,u2: (one User) {
((u2 in (u1.suggested)) => (u1 != u2))
}) && (all u1,u2: (one User) {
((u2 in (u1.suggested)) => (u2 !in (u1.follows)))
}) && (all u1,u2: (one User) {
(((u1.suggested) in u2) => (u2 in ((u1.follows).follows)))
}))
}





