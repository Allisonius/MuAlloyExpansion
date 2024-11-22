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
((all u: (one User) {
(((((Photo)) in (u.sees)) && (((Photo)) in Ad)) => (some u2: (one User) {
(((((Photo)) in (u2.posts)) && (u2 in (u.suggested))) || (u2 in (u.follows)))
}))
}) && (all u: (one User) {
(all p: (one Photo) {
((p in (u.sees)) => (p !in (u.posts)))
})
}))
}





