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
((((((Photo)) !in Ad) && (((Photo)) in (((User)).posts)) && (((Photo)) in (((User)).sees))) => (((User)) in (((User)).follows))) && (all p: (one Photo),u: (one User) {
((p in Ad) => (p in (u.sees)))
}))
}





