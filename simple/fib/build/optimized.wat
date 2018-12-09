(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "fib" (func $assembly/fib/fib))
 (func $assembly/fib/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  set_local $1
  loop $repeat|0
   block $break|0
    get_local $2
    get_local $0
    i32.ge_s
    br_if $break|0
    get_local $1
    get_local $3
    i32.add
    set_local $4
    get_local $1
    set_local $3
    get_local $4
    set_local $1
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  get_local $1
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
