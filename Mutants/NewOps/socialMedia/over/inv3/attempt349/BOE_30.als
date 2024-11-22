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
((sees in (u->p)) => ((p !in Ad) && ((u->f) in follows) && ((f->p) in posts)))
}) && (all a: (one Ad),u: (one User) {
((u->a) in sees)
}))
}





