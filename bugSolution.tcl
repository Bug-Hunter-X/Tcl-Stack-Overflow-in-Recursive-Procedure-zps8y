proc goodproc {a b} {
  if {$a == 0} {
    return 1
  } elseif {$a < 0} {  ;# Added check for negative input
    return 0 ;# Or handle appropriately
  }
  return [goodproc [expr {$a - 1}] $b]
}
puts [goodproc 5 10]