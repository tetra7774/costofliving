package com.gmail.tetra7774.costofliving.controller;

import java.time.LocalDateTime;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gmail.tetra7774.costofliving.service.CostService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/cost")
@RequiredArgsConstructor
public class costController {

    private final CostService service;
    
    @GetMapping
        public costDTO index(){
            var entity = service.find();
            return new costDTO(entity.getContent(), LocalDateTime.now());
        } 
}
