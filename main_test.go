package main

import "testing"

func TestHello(t *testing.T) {
    // Просто проверяем, что тест запускается
    if 1 != 1 {
        t.Fail()
    }
}
