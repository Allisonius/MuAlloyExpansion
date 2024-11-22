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
pred inv8[] {
(all u,a,p: (one univ) {
((((u in User) && (a != Ad) && ((u->a) in sees) && (p in User) && ((p->a) in posts)) => ((u->p) in follows)) || ((u->p) in suggested))
})
}





