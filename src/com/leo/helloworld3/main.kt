package com.leo.helloworld3

import kotlin.system.exitProcess

fun main(args: Array<String>) {
    when {
        args.isEmpty() -> exitProcess(0)
        else -> if (args.size == 1) {
            exitProcess(1)
        } else {
            if (args.size == 2) {
                exitProcess(2)
            } else exitProcess(100)
        }
    }
}
