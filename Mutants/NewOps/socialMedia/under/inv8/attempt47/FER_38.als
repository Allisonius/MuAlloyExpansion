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
pred inv8[] {
((all p: (one Photo) {
(all u: (one User) {
(((p in (u.suggested)) && (p in Ad)) => (some u2: (one User) {
(((p in (u2.posts)) && (u2 in (u.suggested))) || (u2 in (u.follows)))
}))
})
}) && (all u: (one User) {
(u !in (u.sees))
}))
}





