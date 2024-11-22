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
pred inv1[] {
((all i: (one univ) {
((i in Photo) => (some x: (one univ) {
((x->i) in posts)
}))
}) && (all p: (one univ) {
((p in Photo) => ((((univ))->p) in posts))
}))
}





