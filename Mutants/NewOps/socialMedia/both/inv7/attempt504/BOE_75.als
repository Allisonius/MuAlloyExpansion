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
(all s,u: (one User) {
(((s->u) in suggested) => ((some f: (one User) {
(((u->f) in follows) && ((f->s) in follows))
}) && (follows !in (u->s))))
})
}





