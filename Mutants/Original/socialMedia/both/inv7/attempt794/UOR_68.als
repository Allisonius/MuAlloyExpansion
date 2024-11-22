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
((all u: (one (User - Influencer)) {
(((u.suggested) in ((u.follows).follows)) => ((u.suggested) !in (u.follows)))
}) && (all u: (one User) {
(u !in (u.suggested))
}) && (all i: (one Influencer) {
(some (i.suggested))
}) && (all i: (one Influencer),u: (one User) {
(i !in (u.suggested))
}))
}





