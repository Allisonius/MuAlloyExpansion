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
((all x: (one User) {
((no (x.sees)) || (x in (x.follows)))
}) && (all u: (one User),p: (one Photo) {
(((p in (u.sees)) && (p !in Ad)) => (some f: (one u) {
(p in (f.posts))
}))
}) && (all a: (one Ad),u: (one User) {
(a in (u.sees))
}))
}





