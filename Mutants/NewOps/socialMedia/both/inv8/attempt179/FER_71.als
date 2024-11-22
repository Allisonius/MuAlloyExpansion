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
(all x: (one User),t: (one User),a: (one Ad) {
(((((x->a) in sees) && ((t->a) in posts)) => ((x->t) in follows)) || ((x->t) in sees))
})
}





