module unknown
open util/integer [] as integer
sig Workstation {
workers: (set Worker),
succ: (set Workstation)
}
one sig begin in Workstation {}
one sig end in Workstation {}
sig Worker {}
sig Human extends Worker {}
sig Robot extends Worker {}
abstract sig Product {
parts: (set Product)
}
sig Material extends Product {}
sig Component extends Product {
workstation: (set Workstation)
}
sig Dangerous in Product {}
pred inv4[] {
((all product: (one Component) {
(!(no (product.(~parts))))
}) && (all product: (one Product) {
((product != Material) => (some (product.parts)))
}) && (all mat: (one Material) {
(no (mat.parts))
}))
}





