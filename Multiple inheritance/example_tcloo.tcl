package require TclOO

# Define base classes with their methods
oo::class create Base1 {
    method foo1 {} {
        puts "I'm a method from Base1 class"
    }
}

oo::class create Base2 {
    method foo2 {} {
        puts "I'm a method from Base2 class"
    }
}

# Define a subclass that inherits from both Base1 and Base2
oo::class create Sub {
    superclass Base1 Base2
}

# Create an instance of Sub and call the inherited methods
set sub [Sub new]
$sub foo1
$sub foo2
