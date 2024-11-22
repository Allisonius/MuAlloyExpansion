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
((((u in User) && (a in Ad) && ((u->a) in suggested) && (p in User) && ((p->a) in posts)) => ((p->u) in follows)) || ((p->u) in suggested))
})
}





