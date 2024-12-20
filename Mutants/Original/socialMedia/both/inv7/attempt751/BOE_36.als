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
(((u.suggested) in ((u.follows).follows)) => ((u.follows) !in (u.suggested)))
}) && (all u: (one User) {
(u !in (u.suggested))
}) && (all i: (one Influencer),u: (one User) {
(i !in (u.suggested))
}))
}





