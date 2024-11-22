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
((one x: (one User) {
(all p: (one Photo) {
((x->p) in posts)
})
}) && (all x,y: (one User) {
(all p: (one Photo) {
((((x->p) in posts) && ((y->p) in posts)) => (x = y))
})
}) && (all p: (one Photo) {
((((User))->p) in posts)
}) && (all p: (one Photo) {
(all u,v: (one User) {
((((u->p) in posts) && ((v->p) in posts)) => (u = v))
})
}))
}





