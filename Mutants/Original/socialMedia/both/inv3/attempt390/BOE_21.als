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
(all u,f,p,s: (one univ) {
(((u in User) && (follows in (u->f)) && ((f->p) in posts) && ((u->s) in sees)) => (s = p))
})
}





