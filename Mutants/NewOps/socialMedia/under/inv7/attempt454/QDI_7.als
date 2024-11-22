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
(all x: (User & Influencer),t: (one (User - x)),k: (one (User - t)) {
(((x->k) in suggested) => (((x->t) in follows) && ((t->k) in follows) && (x != k)))
})
}





