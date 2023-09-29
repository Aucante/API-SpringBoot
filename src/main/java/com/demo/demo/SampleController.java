package com.demo.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleController {

    @GetMapping("/")
    public String home() {
        return "Spring";
    }

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, world!";
    }
}
