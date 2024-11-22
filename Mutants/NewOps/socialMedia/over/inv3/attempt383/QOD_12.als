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
((((((Photo)) !in Ad) && (((Photo)) in (((User)).sees))) => (some x: (one User) {
((((Photo)) in (x.posts)) && (x in (((User)).follows)))
})) && (all a: (one Ad),u: (one User) {
(a in (u.sees))
}))
}





