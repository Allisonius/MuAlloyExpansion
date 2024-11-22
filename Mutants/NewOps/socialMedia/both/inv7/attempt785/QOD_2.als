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
((all u1: (one User) {
(all u3: (one User) {
(((((User)) in (u1.follows)) && (u3 in (((User)).follows)) && (u3 !in (u1.follows))) => (u3 in (u1.suggested)))
})
}) || (all u1: (one User) {
(all inf: (one Influencer) {
(inf in (u1.suggested))
})
}))
}





