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
((((((User)) != ((User))) && (((Photo)) in (((User)).sees)) && (((Photo)) !in Ad) && (((User)) in (((User)).follows))) => (((Photo)) in (((User)).posts))) && (all a: (one Ad),u: (one User) {
(a in (u.sees))
}))
}





