var map = Map.weak()
var item = Map.new()
map["foo"] = item
System.print(map.containsKey("foo")) // expect: true
item = null
System.gc()
System.print(map.containsKey("foo")) // expect: false
