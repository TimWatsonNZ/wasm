(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "fib" (func $assembly/fib/fib))
 (func $assembly/fib/fib (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  set_local $2
  i32.const 1
  set_local $3
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $2
     get_local $3
     i32.add
     set_local $1
     get_local $3
     set_local $2
     get_local $1
     set_local $3
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $null (; 1 ;) (type $v)
 )
)
