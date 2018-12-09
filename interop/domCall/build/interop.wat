(module
 (type $iv (func (param i32)))
 (type $v (func))
 (import "interop" "logi" (func $assembly/interop/logi (param i32)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "logi" (func $assembly/interop/logi))
 (export "log" (func $assembly/interop/log))
 (func $assembly/interop/log (; 1 ;) (type $iv) (param $0 i32)
  get_local $0
  call $assembly/interop/logi
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
