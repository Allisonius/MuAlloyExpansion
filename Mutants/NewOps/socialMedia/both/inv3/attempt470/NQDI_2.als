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
pred inv3[] {
((all u: (one User),p: (one Photo) {
(some f: (one User) {f != u =>  {f != u =>  {
(((u->p) in sees) => ((u->f) in follows))
}}})
}) && (User in (sees.Ad)))
}





