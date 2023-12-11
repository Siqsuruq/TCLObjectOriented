package require nx

nx::Class create Person {
	:property name:required
	:property birthday
	
	:public method get_name {} {
		return ${:name}
	}
}

# Creating 2 Person Instances
Person create p1 -name Bob
Person create p2 -name Maria


nx::Class create peeps {
	:property {person:object}
	
	:public method aget {args} {
		puts "Object: [${:person} info name] has a property name with [${:person} get_name] value"
	}
}

# Creating peeps Instances
peeps create peep1 -person p1
peeps create peep2 -person p2

# Calling Methods on peeps Instances
peep1 aget
peep2 aget

# Output will be:
# Object: p1 has a property name with  Bob value
# Object: p2 has a property name with  Maria value