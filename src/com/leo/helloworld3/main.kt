package com.leo.helloworld3

import kotlin.system.exitProcess

fun main(args: Array<String>) {
    val a: Int = when {
        args.isEmpty() -> 0
        args.size == 1 -> 1
        args.size == 2 -> 2
        else -> {
            for (arg in args) {
                println(arg)
            }
            3
        }
    }

    exitProcess(a)
}

