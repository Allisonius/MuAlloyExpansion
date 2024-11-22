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
pred inv7[] {
(all x: (one User),t: (one User),k: (one (User - t)) {
(((k->x) in suggested) => (((x->t) in follows) && ((t->k) in follows) && ((x->k) !in follows)))
})
}





