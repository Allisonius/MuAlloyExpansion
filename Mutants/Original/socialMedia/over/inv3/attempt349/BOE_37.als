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
((all u,f: (one User),p: (one Photo) {
(((u->p) in sees) => ((p !in Ad) && ((u->f) in follows) && (posts in (f->p))))
}) && (all a: (one Ad),u: (one User) {
((u->a) in sees)
}))
}





