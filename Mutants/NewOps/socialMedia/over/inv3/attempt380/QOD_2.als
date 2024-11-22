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
((all p: (one Ad),u: (one User) {
(p in (u.sees))
}) && (((Photo - Ad) in (((User)).sees)) => (some u2: (one User) {
(((Photo - Ad) in (u2.posts)) && (u2 in (((User)).follows)))
})))
}





