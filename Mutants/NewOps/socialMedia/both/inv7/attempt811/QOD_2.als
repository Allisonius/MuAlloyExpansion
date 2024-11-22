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
((((((User)) !in (((User)).follows)) && (((User)) in (((User)).follows)) && (((User)) in (((User)).follows))) => (((User)) in (((User)).suggested))) && (all u: (one User) {
(u !in (u.suggested))
}) && (all u: (one User) {
(all i: (one Influencer) {
(i !in (u.suggested))
})
}) && (all u1,u2: (one User) {
((u1 !in (u2.(^follows))) => (u1 !in (u2.suggested)))
}))
}





