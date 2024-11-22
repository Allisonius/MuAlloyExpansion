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
((all u,x: (one User),p: (one Photo) {
(((p !in Day) && (p in (u.sees)) && (p in (x.posts))) => (x in (u.follows)))
}) && (all a: (one Ad) {
(some u: (one User) {
(a in (u.sees))
})
}))
}





