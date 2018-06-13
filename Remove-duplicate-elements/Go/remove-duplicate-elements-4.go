package main

import (
	"fmt"
	"reflect"
)

func uniq(x interface{}) (interface{}) {
	v := reflect.ValueOf(x)
	if !v.IsValid() {
		panic("uniq: invalid argument")
	}
	if k := v.Kind(); k != reflect.Array && k != reflect.Slice {
		panic("uniq: argument must be an array or a slice")
	}
	elemType := v.Type().Elem()
	intType := reflect.TypeOf(int(0))
	mapType := reflect.MapOf(elemType, intType)
	m := reflect.MakeMap(mapType)
	i := 0
	for j := 0; j < v.Len(); j++ {
		x := v.Index(j)
		if m.MapIndex(x).IsValid() {
			continue
		}
		m.SetMapIndex(x, reflect.ValueOf(i))
		if m.MapIndex(x).IsValid() {
			i++
		}
	}
	sliceType := reflect.SliceOf(elemType)
	result := reflect.MakeSlice(sliceType, i, i)
	for _, key := range m.MapKeys() {
		ival := m.MapIndex(key)
		if !ival.IsValid() {
		} else {
			result.Index(int(ival.Int())).Set(key)
		}
	}

	return result
}

type MyType struct {
	name  string
	value float32
}

func main() {
	intArray := [...]int{5, 1, 2, 3, 2, 3, 4}
	uArray:= uniq(intArray)
	fmt.Println(uArray)

}
