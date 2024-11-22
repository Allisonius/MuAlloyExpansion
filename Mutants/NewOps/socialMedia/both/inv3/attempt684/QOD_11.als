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
pred inv3[] {
((one u: (one User) {
(((Photo - Ad) in (u.sees)) => (some p: (one User) {
((p in (u.follows)) && ((Photo - Ad) in (p.posts)))
}))
}) && (all a: (one Ad) {
(all u: (one User) {
(a in (u.sees))
})
}))
}





