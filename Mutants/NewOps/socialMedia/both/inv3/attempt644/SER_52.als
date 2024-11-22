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
((all u: (one User) {
(all a: (one Ad) {
(a in (u.sees))
})
}) && (all p: (one (Photo - Photo)) {
(all u,y: (one User) {
(((p in (u.sees)) && (p in (y.posts))) => (y in (u.follows)))
})
}))
}





