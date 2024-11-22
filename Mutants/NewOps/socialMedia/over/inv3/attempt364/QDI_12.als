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
((all x: (one User),y: (Ad + Photo) {
((x->y) in sees)
}) && (all x: (one User),y: (one Photo) {
(((x->y) in sees) => (all v: (one User) {
(((v->y) in posts) && ((x->v) in follows))
}))
}))
}





