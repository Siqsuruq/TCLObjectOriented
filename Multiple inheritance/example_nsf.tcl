package require nx

nx::Class create Base1 {
	:public method foo1 {} {
		puts "Im a method from Base1 class"
	}
}

nx::Class create Base2 {
	:public method foo2 {} {
		puts "Im a method from Base2 class"
	}
}

nx::Class create Sub -superclasses {Base1 Base2} {}

set sub [Sub new]
$sub foo1
$sub foo2