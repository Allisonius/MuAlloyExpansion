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
(all u,f,p,s,a: (one univ) {
(((u in User) && ((u->f) in follows) && ((f->p) in posts) && ((u->s) in sees) && (a in Ad)) => (s = p))
})
}





