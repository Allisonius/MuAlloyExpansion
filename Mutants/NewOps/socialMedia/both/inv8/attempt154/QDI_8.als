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
(all u,us: (User & Influencer),a: (one Ad) {
((((u->a) in sees) && ((us->a) in posts)) => (((u->us) in follows) || ((u->us) in suggested)))
})
}





