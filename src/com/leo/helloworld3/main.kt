package com.leo.helloworld3

fun main(args: Array<String>) {
    if (args.isEmpty()) {
        println("!!! No params !!!")
    } else args.forEach { println(it) }
}