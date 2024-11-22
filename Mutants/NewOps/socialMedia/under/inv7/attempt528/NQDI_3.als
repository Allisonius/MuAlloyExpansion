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
(((u->s) in suggested) => ((s != u) && ((u->s) !in follows) && (some f: (one User) {f != s =>  {f != s =>  {
(((u->f) in follows) && ((f->s) in follows))
}}})))
})
}





